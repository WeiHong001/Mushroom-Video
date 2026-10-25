package com.kotlin.basiclib;

import androidx.lifecycle.DefaultLifecycleObserver;

/**
 * Supplies interface defaults to the recovered smali observer through normal D8 compilation.
 * Android Studio device builds may keep native default methods instead of emitting $-CC classes.
 */
public abstract class BindingLifecycleObserver implements DefaultLifecycleObserver {
}
