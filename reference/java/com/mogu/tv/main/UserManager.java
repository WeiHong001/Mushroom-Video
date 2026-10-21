package com.mogu.tv.main;

import com.kotlin.basiclib.utils.SpUtil;
import com.kotlin.basiclib.utils.ToastUtil;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.model.UserModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UserManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0015\u001a\u00020\u0016J\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0018\u001a\u0004\u0018\u00010\u0010J\b\u0010\u0019\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001a\u001a\u00020\u0010J\b\u0010\u001b\u001a\u0004\u0018\u00010\u0010J\u0006\u0010\u001c\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u0010J\u0012\u0010!\u001a\u00020\u00162\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0004R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006#"}, d2 = {"Lcom/mogu/tv/main/UserManager;", "", "()V", "globalUser", "Lcom/mogu/tv/model/UserModel;", "getGlobalUser", "()Lcom/mogu/tv/model/UserModel;", "setGlobalUser", "(Lcom/mogu/tv/model/UserModel;)V", "shareTotal", "", "getShareTotal", "()I", "setShareTotal", "(I)V", "userToken", "", "getUserToken", "()Ljava/lang/String;", "setUserToken", "(Ljava/lang/String;)V", "clearUserInfo", "", "getFocusNumber", "getJifen", "getName", "getPicture", "getUserId", "initFirst", "isLogin", "", "refreshToken", "token", "saveUserInfo", "user", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class UserManager {
    private static UserModel globalUser;
    private static int shareTotal;
    public static final UserManager INSTANCE = new UserManager();
    private static String userToken = "";

    private UserManager() {
    }

    public final UserModel getGlobalUser() {
        return globalUser;
    }

    public final void setGlobalUser(UserModel userModel) {
        globalUser = userModel;
    }

    public final String getUserToken() {
        return userToken;
    }

    public final void setUserToken(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        userToken = str;
    }

    public final int getShareTotal() {
        return shareTotal;
    }

    public final void setShareTotal(int i) {
        shareTotal = i;
    }

    public final void initFirst() {
        String string = SpUtil.INSTANCE.getString(CacheKey.INSTANCE.getUSER_TOKEN(), "");
        userToken = string;
        if (string.length() > 0) {
            ApiManager.INSTANCE.getUserInfo(new Function3<Integer, String, UserModel, Unit>() { // from class: com.mogu.tv.main.UserManager.initFirst.1
                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, UserModel userModel) {
                    invoke(num.intValue(), str, userModel);
                    return Unit.INSTANCE;
                }

                public final void invoke(int i, String msg, UserModel userModel) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    if (i == 200 && userModel != null) {
                        UserManager.INSTANCE.saveUserInfo(userModel);
                    } else if (i == 403) {
                        ToastUtil.INSTANCE.toast("账号已过期,请重新登录");
                        UserManager.INSTANCE.clearUserInfo();
                    }
                }
            });
        } else {
            clearUserInfo();
        }
    }

    public final void refreshToken(String token) {
        Intrinsics.checkNotNullParameter(token, "token");
        userToken = token;
        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getUSER_TOKEN(), token);
        initFirst();
    }

    public static /* synthetic */ void saveUserInfo$default(UserManager userManager, UserModel userModel, int i, Object obj) {
        if ((i & 1) != 0) {
            userModel = globalUser;
        }
        userManager.saveUserInfo(userModel);
    }

    public final void saveUserInfo(UserModel user) {
        try {
            globalUser = user;
        } catch (Exception unused) {
        }
    }

    public final void clearUserInfo() {
        globalUser = null;
        userToken = "";
        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getUSER_TOKEN(), "");
    }

    public final boolean isLogin() {
        return userToken.length() > 0;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    public final String getName() {
        boolean z;
        String name;
        if (!isLogin()) {
            return "";
        }
        UserModel userModel = globalUser;
        if (userModel != null && (name = userModel.getName()) != null) {
            z = name.length() > 0;
        }
        if (!z) {
            return "蘑菇用户";
        }
        UserModel userModel2 = globalUser;
        if (userModel2 != null) {
            return userModel2.getName();
        }
        return null;
    }

    public final String getFocusNumber() {
        if (!isLogin()) {
            return "0";
        }
        UserModel userModel = globalUser;
        if (userModel != null) {
            return userModel.getFollower();
        }
        return null;
    }

    public final String getJifen() {
        if (!isLogin()) {
            return "0";
        }
        UserModel userModel = globalUser;
        if (userModel != null) {
            return userModel.getIntegral();
        }
        return null;
    }

    public final String getUserId() {
        if (!isLogin()) {
            return "";
        }
        UserModel userModel = globalUser;
        if (userModel != null) {
            return userModel.getId();
        }
        return null;
    }

    public final String getPicture() {
        UserModel userModel;
        String avatar;
        return (!isLogin() || (userModel = globalUser) == null || (avatar = userModel.getAvatar()) == null) ? "" : avatar;
    }
}
