package com.kotlin.basiclib.common;

import kotlin.Metadata;

/* JADX INFO: compiled from: Actions.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0014\u0010\t\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/kotlin/basiclib/common/Actions;", "", "()V", "REQUEST_IMAGE", "", "getREQUEST_IMAGE", "()I", "REQUEST_NAME", "getREQUEST_NAME", "REQUEST_VIDEO", "getREQUEST_VIDEO", "catchPhotoResponse", "getCatchPhotoResponse", "basiclib_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class Actions {
    public static final Actions INSTANCE = new Actions();
    private static final int REQUEST_IMAGE = 101;
    private static final int REQUEST_VIDEO = 102;
    private static final int REQUEST_NAME = 10010;
    private static final int catchPhotoResponse = 1010;

    private Actions() {
    }

    public final int getREQUEST_IMAGE() {
        return REQUEST_IMAGE;
    }

    public final int getREQUEST_VIDEO() {
        return REQUEST_VIDEO;
    }

    public final int getREQUEST_NAME() {
        return REQUEST_NAME;
    }

    public final int getCatchPhotoResponse() {
        return catchPhotoResponse;
    }
}
