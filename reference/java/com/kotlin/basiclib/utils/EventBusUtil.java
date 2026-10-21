package com.kotlin.basiclib.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;

/* JADX INFO: compiled from: EventBusUtil.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001J\u000e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001J\u0006\u0010\b\u001a\u00020\u0004J\u001a\u0010\t\u001a\u00020\u0004\"\u0004\b\u0000\u0010\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\n0\fJ\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001¨\u0006\u000e"}, d2 = {"Lcom/kotlin/basiclib/utils/EventBusUtil;", "", "()V", "post", "", "subscriber", "postSticky", "register", "removeAllStickyEvents", "removeStickyEvent", "T", "eventType", "Ljava/lang/Class;", "unregister", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class EventBusUtil {
    public static final EventBusUtil INSTANCE = new EventBusUtil();

    private EventBusUtil() {
    }

    public final void register(Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        if (EventBus.getDefault().isRegistered(subscriber)) {
            return;
        }
        EventBus.getDefault().register(subscriber);
    }

    public final void unregister(Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBus.getDefault().unregister(subscriber);
    }

    public final void post(Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBus.getDefault().post(subscriber);
    }

    public final void postSticky(Object subscriber) {
        Intrinsics.checkNotNullParameter(subscriber, "subscriber");
        EventBus.getDefault().postSticky(subscriber);
    }

    public final <T> void removeStickyEvent(Class<T> eventType) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        Object stickyEvent = EventBus.getDefault().getStickyEvent(eventType);
        if (stickyEvent != null) {
            EventBus.getDefault().removeStickyEvent(stickyEvent);
        }
    }

    public final void removeAllStickyEvents() {
        EventBus.getDefault().removeAllStickyEvents();
    }
}
