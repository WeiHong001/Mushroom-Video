package com.mogu.research;

import android.app.Instrumentation;
import android.content.Context;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.test.ext.junit.runners.AndroidJUnit4;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.viewbinding.ViewBinding;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.analytics.AnalyticsListener;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import org.junit.Test;
import org.junit.runner.RunWith;
import static org.junit.Assert.*;

/** Run with both the normal minSdk build and Android Studio's injected device API build. */
@RunWith(AndroidJUnit4.class)
public class RecoveredListenerDefaultsTest {
    private final Instrumentation instrumentation=InstrumentationRegistry.getInstrumentation();
    private final Context context=instrumentation.getTargetContext();

    private static class Owner implements LifecycleOwner {
        final LifecycleRegistry lifecycle=new LifecycleRegistry(this);
        @Override public Lifecycle getLifecycle(){return lifecycle;}
    }

    @Test public void fragmentLifecycleReachesDestroyAndClearsBinding() throws Exception {
        Class<?> delegateType=context.getClassLoader().loadClass("com.kotlin.basiclib.FragmentBindingDelegate");
        Object delegate=delegateType.getConstructor().newInstance();
        Field binding=delegateType.getDeclaredField("_binding");
        binding.setAccessible(true);
        Class<?> observerType=context.getClassLoader().loadClass("com.kotlin.basiclib.FragmentBindingDelegate$createViewWithBinding$1");
        Constructor<?> constructor=observerType.getDeclaredConstructor(delegateType);
        constructor.setAccessible(true);
        LifecycleObserver observer=(LifecycleObserver)constructor.newInstance(delegate);
        instrumentation.runOnMainSync(()->{
            try {
                View root=new View(context);
                ViewBinding value=()->root;
                binding.set(delegate,value);
                Owner owner=new Owner();
                owner.lifecycle.addObserver(observer);
                for(Lifecycle.Event event:new Lifecycle.Event[]{Lifecycle.Event.ON_CREATE,
                        Lifecycle.Event.ON_START,Lifecycle.Event.ON_RESUME,
                        Lifecycle.Event.ON_PAUSE,Lifecycle.Event.ON_STOP}) {
                    owner.lifecycle.handleLifecycleEvent(event);
                    assertSame("Binding survives "+event,value,binding.get(delegate));
                }
                owner.lifecycle.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
        });
        instrumentation.waitForIdleSync();
        assertNull("Original deferred binding cleanup still runs",binding.get(delegate));
    }

    @Test public void recoveredPlayerAcceptsDefaultListenerCallbacks() {
        instrumentation.runOnMainSync(()->{
            try {
                Class<?> type=context.getClassLoader().loadClass("com.mogu.tv.utils.exo.IjkExoMyMediaPlayer");
                Object adapter=type.getConstructor(Context.class).newInstance(context);
                try {
                    Player.Listener player=(Player.Listener)adapter;
                    player.onIsPlayingChanged(false);
                    player.onRepeatModeChanged(Player.REPEAT_MODE_OFF);
                    player.onVolumeChanged(1f);
                    AnalyticsListener analytics=(AnalyticsListener)adapter;
                    analytics.onIsPlayingChanged(null,false);
                    analytics.onRepeatModeChanged(null,Player.REPEAT_MODE_OFF);
                    analytics.onVolumeChanged(null,1f);
                } finally {type.getMethod("release").invoke(adapter);}
            } catch(ReflectiveOperationException error){throw new AssertionError(error);}
        });
    }
}
