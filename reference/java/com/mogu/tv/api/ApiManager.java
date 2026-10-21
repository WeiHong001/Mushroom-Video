package com.mogu.tv.api;

import android.os.Build;
import android.provider.Settings;
import android.webkit.WebSettings;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.utils.MD5EncryptNf;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.model.AllAdsModel;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.model.HistoryLists;
import com.mogu.tv.model.IndexLables;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.LabelsModel;
import com.mogu.tv.model.LoginResult;
import com.mogu.tv.model.MoguConfig;
import com.mogu.tv.model.NvyouList;
import com.mogu.tv.model.ShequDetailsModel;
import com.mogu.tv.model.ShequListLoveModel;
import com.mogu.tv.model.ShequListModel;
import com.mogu.tv.model.ShortStarVideoLists;
import com.mogu.tv.model.ShortVideoList;
import com.mogu.tv.model.Upload24;
import com.mogu.tv.model.UserList;
import com.mogu.tv.model.UserModel;
import com.mogu.tv.model.UserOtherInfo;
import com.mogu.tv.model.UserShareList;
import com.mogu.tv.model.VideoListModel;
import com.mogu.tv.model.VideoPlayDetails;
import com.mogu.tv.model.VideoTypes;
import com.mogu.tv.model.VipVideoList;
import com.umeng.analytics.pro.ak;
import com.yanbo.lib_screen.entity.VItem;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import master.flame.danmaku.danmaku.parser.IDataSource;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;

/* JADX INFO: compiled from: ApiManager.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J]\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ\u000e\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004Je\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0019¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010\u001a\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010\u001e\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u001f¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010 \u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010!¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010\"\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010&¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010'\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010(¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010)\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010*\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010+\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010,¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010-\u001a\u00020\n2\u0006\u0010.\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000100¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u00101\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000102¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u00103\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u00104\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000105¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u00106\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000107¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010:¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010;\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010<¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010=\u001a\u00020\n2\u0006\u0010>\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010?\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010@¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010A\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010B¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010C\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010D¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010E\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010F¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010G\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000100¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010H\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010J¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010K\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010M¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJU\u0010N\u001a\u00020\n2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010O\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000102¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010P\u001a\u00020\n2\u0006\u0010Q\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000102¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010R\u001a\u00020\n2\u0006\u0010L\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010S¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010T\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u000102¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010U\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010W¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ\u0010\u0010X\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\u0004J]\u0010Y\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010Z¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010[\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010Z¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJu\u0010\\\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042\u0006\u0010_\u001a\u00020\u00042\u0006\u0010`\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010a¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJm\u0010b\u001a\u00020\n2\u0006\u0010c\u001a\u00020\u000e2\u0006\u0010d\u001a\u00020\u00042\u0006\u0010e\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010f\u001a\u00020\n2\u0006\u0010g\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010h\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010a¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJm\u0010i\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00042\u0006\u0010^\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJm\u0010j\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010k\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJm\u0010l\u001a\u00020\n2\u0006\u0010]\u001a\u00020\u00042\u0006\u0010_\u001a\u00020\u00042\u0006\u0010`\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010m\u001a\u00020\n2\u0006\u0010n\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0019¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ_\u0010o\u001a\u00020\n2\b\b\u0002\u0010\u0017\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010p\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010q\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010r\u001a\u00020\n2\u0006\u0010s\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJy\u0010t\u001a\u00020\n2\"\u0010#\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010$j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001`%2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010Z¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010u\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010v\u001a\u00020\n2\u0006\u0010w\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010x\u001a\u00020\n2\u0006\u0010y\u001a\u00020z2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010{\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010|\u001a\u00020\n2\u0006\u0010}\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJ]\u0010~\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0013¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJe\u0010\u007f\u001a\u00020\n2\u0006\u0010n\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000e2M\u0010\f\u001aI\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0015\u0012\u0013\u0018\u00010\u0019¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\n0\rJv\u0010\u0080\u0001\u001a\u00020\n\"\u000b\b\u0000\u0010\u0081\u0001\u0018\u0001*\u00020\u0001*\n\u0012\u0005\u0012\u00030\u0083\u00010\u0082\u00012Q\b\u0004\u0010\f\u001aK\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0018\u0001H\u0081\u0001¢\u0006\r\b\u000f\u0012\t\b\u0010\u0012\u0005\b\b(\u0084\u0001\u0012\u0004\u0012\u00020\n0\rH\u0082\bJb\u0010\u0080\u0001\u001a\u00020\n\"\u000b\b\u0000\u0010\u0081\u0001\u0018\u0001*\u00020\u0001*\n\u0012\u0005\u0012\u00030\u0083\u00010\u0082\u00012=\b\u0004\u0010\f\u001a7\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0017\u0012\u0015\u0018\u0001H\u0081\u0001¢\u0006\r\b\u000f\u0012\t\b\u0010\u0012\u0005\b\b(\u0084\u0001\u0012\u0004\u0012\u00020\n0\u0085\u0001H\u0082\bJ\u007f\u0010\u0080\u0001\u001a\u00020\n\"\u000b\b\u0000\u0010\u0081\u0001\u0018\u0001*\u00020\u0001*\n\u0012\u0005\u0012\u00030\u0083\u00010\u0082\u00012\u0007\u0010\u0086\u0001\u001a\u00020\u00042Q\b\u0004\u0010\f\u001aK\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0017\u0012\u0015\u0018\u0001H\u0081\u0001¢\u0006\r\b\u000f\u0012\t\b\u0010\u0012\u0005\b\b(\u0084\u0001\u0012\u0004\u0012\u00020\n0\rH\u0082\bJh\u0010\u0087\u0001\u001a\u00020\n*\n\u0012\u0005\u0012\u00030\u0083\u00010\u0082\u00012P\b\u0004\u0010\f\u001aJ\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u000f\u0012\b\b\u0010\u0012\u0004\b\b(\u0012\u0012\u0016\u0012\u0014\u0018\u00010\u0004¢\u0006\r\b\u000f\u0012\t\b\u0010\u0012\u0005\b\b(\u0084\u0001\u0012\u0004\u0012\u00020\n0\rH\u0082\bJ\u0015\u0010\u0088\u0001\u001a\u00020\n*\n\u0012\u0005\u0012\u00030\u0083\u00010\u0082\u0001H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0089\u0001"}, d2 = {"Lcom/mogu/tv/api/ApiManager;", "", "()V", "uuid", "", "getUuid", "()Ljava/lang/String;", "uuid$delegate", "Lkotlin/Lazy;", "blogStar", "", "id", "action", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "code", NotificationCompat.CATEGORY_MESSAGE, "Lcom/mogu/tv/model/JustReturnMsg;", "response", "clickAd", "commentLists", "vod_id", "mPage", "Lcom/mogu/tv/model/CommentLists;", "focusUser", "gbookSave", "comment_content", "verify", "get24upload", "Lcom/mogu/tv/model/Upload24;", "getAllAd", "Lcom/mogu/tv/model/AllAdsModel;", "getBlobList", "queryMap", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "Lcom/mogu/tv/model/ShequListModel;", "getBlobLoveList", "Lcom/mogu/tv/model/ShequListLoveModel;", "getCacheShareCode", "getCdnHost", "getDetailsShequ", "Lcom/mogu/tv/model/ShequDetailsModel;", "getFocusList", "user_id", "page", "Lcom/mogu/tv/model/UserList;", "getFocusVideoList", "Lcom/mogu/tv/model/VideoListModel;", "getHostTxt", "getIndexLables", "Lcom/mogu/tv/model/IndexLables;", "getLables", "Lcom/mogu/tv/model/LabelsModel;", "getMoguConfig", "key", "Lcom/mogu/tv/model/MoguConfig;", "getNvyou", "Lcom/mogu/tv/model/NvyouList;", "getRankVideo", "type", "getShortStarVideoLists", "Lcom/mogu/tv/model/ShortStarVideoLists;", "getShortVideoLists", "Lcom/mogu/tv/model/ShortVideoList;", "getTypeAll", "Lcom/mogu/tv/model/VideoTypes;", "getUserInfo", "Lcom/mogu/tv/model/UserModel;", "getUserList", "getUserOhterData", "userId", "Lcom/mogu/tv/model/UserOtherInfo;", "getUserShareList", "limit", "Lcom/mogu/tv/model/UserShareList;", "getVerifyCodeImage", "getVideoList", "getVideoRecommend", "vodId", "getVipVideoData", "Lcom/mogu/tv/model/VipVideoList;", "getVodClever", "getVodDetials", "ids", "Lcom/mogu/tv/model/VideoPlayDetails;", "historyAdd", "historyDel", "Lcom/mogu/tv/model/HistoryLists;", "historyLists", "loginUser", "user_name", "user_pwd", "captchaId", "yzmText", "Lcom/mogu/tv/model/LoginResult;", "postShare", "shareUserID", "deviceId", "accessKey", "postSuggest", "suggest", "registUser", "resetPassword", "saveComment", "comment", "senSMs", "shequCommentList", "blog_id", "starAdd", "starDel", "starDelDetails", "starDelSqDetails", "blobId", "starLists", "unfocusUser", "unlockVipVIdeo", "vipid", "updateUser", IDataSource.SCHEME_FILE_TAG, "Lokhttp3/MultipartBody$Part;", "updateUserName", "vLogDelete", "vlog_id", "vLogStar", "vlobCommentList", "netCallBack", "T", "Lio/reactivex/Observable;", "Lokhttp3/ResponseBody;", ak.aH, "Lkotlin/Function2;", "cach", "netStringCallBack", "noCallBack", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ApiManager {
    public static final ApiManager INSTANCE = new ApiManager();

    /* JADX INFO: renamed from: uuid$delegate, reason: from kotlin metadata */
    private static final Lazy uuid = LazyKt.lazy(new Function0<String>() { // from class: com.mogu.tv.api.ApiManager$uuid$2
        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            Boolean boolValueOf;
            String string = SpUtil.INSTANCE.getString("uuid", "");
            Boolean boolValueOf2 = null;
            if (string != null) {
                boolValueOf = Boolean.valueOf(string.length() == 0);
            } else {
                boolValueOf = null;
            }
            Intrinsics.checkNotNull(boolValueOf);
            if (boolValueOf.booleanValue()) {
                string = Settings.System.getString(BaseApplicaitonKt.getApplication().getContentResolver(), "android_id");
                SpUtil.INSTANCE.saveValue("uuid", string);
            }
            if (string != null) {
                boolValueOf2 = Boolean.valueOf(string.length() == 0);
            }
            Intrinsics.checkNotNull(boolValueOf2);
            if (boolValueOf2.booleanValue() && Build.VERSION.SDK_INT >= 17) {
                string = MD5EncryptNf.encode(WebSettings.getDefaultUserAgent(BaseApplicaitonKt.getApplication()));
            }
            Intrinsics.checkNotNull(string);
            return string;
        }
    });

    private ApiManager() {
    }

    public final String getUuid() {
        return (String) uuid.getValue();
    }

    private final /* synthetic */ <T> void netCallBack(Observable<ResponseBody> observable, final Function2<? super Integer, ? super T, Unit> function2) {
        ObservableSource observableSourceCompose = observable.compose(RxSchedulers.ioMain());
        Intrinsics.reifiedOperationMarker(4, "T");
        Intrinsics.needClassReification();
        observableSourceCompose.subscribe(new NetCallBack<T>(Object.class) { // from class: com.mogu.tv.api.ApiManager.netCallBack.1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, T t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                function2.invoke(Integer.valueOf(code), t);
            }
        });
    }

    private final /* synthetic */ <T> void netCallBack(Observable<ResponseBody> observable, final Function3<? super Integer, ? super String, ? super T, Unit> function3) {
        ObservableSource observableSourceCompose = observable.compose(RxSchedulers.ioMain());
        Intrinsics.reifiedOperationMarker(4, "T");
        Intrinsics.needClassReification();
        observableSourceCompose.subscribe(new NetCallBack<T>(Object.class) { // from class: com.mogu.tv.api.ApiManager.netCallBack.2
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, T t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                function3.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    /* JADX INFO: renamed from: com.mogu.tv.api.ApiManager$netStringCallBack$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ApiManager.kt */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"}, d2 = {"com/mogu/tv/api/ApiManager$netStringCallBack$1", "Lcom/mogu/tv/api/NetStringCallBack;", "", "onResponse", "", "code", "", NotificationCompat.CATEGORY_MESSAGE, ak.aH, "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class C01011 extends NetStringCallBack<String> {
        final /* synthetic */ Function3<Integer, String, String, Unit> $action;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C01011(Function3<? super Integer, ? super String, ? super String, Unit> function3, Class<String> cls) {
            super(cls);
            this.$action = function3;
        }

        @Override // com.mogu.tv.api.NetStringCallBack
        public void onResponse(int code, String msg, String t) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            this.$action.invoke(Integer.valueOf(code), msg, t);
        }
    }

    private final void netStringCallBack(Observable<ResponseBody> observable, Function3<? super Integer, ? super String, ? super String, Unit> function3) {
        observable.compose(RxSchedulers.ioMain()).subscribe(new C01011(function3, String.class));
    }

    private final /* synthetic */ <T> void netCallBack(Observable<ResponseBody> observable, String str, final Function3<? super Integer, ? super String, ? super T, Unit> function3) {
        ObservableSource observableSourceCompose = observable.compose(RxSchedulers.ioMain());
        Intrinsics.reifiedOperationMarker(4, "T");
        Intrinsics.needClassReification();
        observableSourceCompose.subscribe(new NetCallBack<T>(str, Object.class) { // from class: com.mogu.tv.api.ApiManager.netCallBack.3
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, T t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                function3.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    private final void noCallBack(Observable<ResponseBody> observable) {
        observable.compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<Object>(Object.class) { // from class: com.mogu.tv.api.ApiManager.noCallBack.1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, Object t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
            }
        });
    }

    public final void getTypeAll(final Function3<? super Integer, ? super String, ? super VideoTypes, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoTypes> cls = VideoTypes.class;
        ApiClient.INSTANCE.getService().getTypeAll().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoTypes>(cls) { // from class: com.mogu.tv.api.ApiManager$getTypeAll$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoTypes t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getNvyou(final Function3<? super Integer, ? super String, ? super NvyouList, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<NvyouList> cls = NvyouList.class;
        ApiClient.INSTANCE.getService().getNvyou().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<NvyouList>(cls) { // from class: com.mogu.tv.api.ApiManager$getNvyou$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, NvyouList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void get24upload(final Function3<? super Integer, ? super String, ? super Upload24, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<Upload24> cls = Upload24.class;
        ApiClient.INSTANCE.getService().get24upload().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<Upload24>(cls) { // from class: com.mogu.tv.api.ApiManager$get24upload$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, Upload24 t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getIndexLables(final Function3<? super Integer, ? super String, ? super IndexLables, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<IndexLables> cls = IndexLables.class;
        ApiClient.INSTANCE.getService().getIndexRecommendLables().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<IndexLables>(cls) { // from class: com.mogu.tv.api.ApiManager$getIndexLables$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, IndexLables t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getVideoList(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super VideoListModel, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoListModel> cls = VideoListModel.class;
        ApiClient.INSTANCE.getService().getVideoList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoListModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getVideoList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoListModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getRankVideo(String type, Function3<? super Integer, ? super String, ? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(action, "action");
        ApiClient.INSTANCE.getService().getRankList(type).compose(RxSchedulers.ioMain()).subscribe(new C01011(action, String.class));
    }

    public final void getVideoRecommend(String vodId, final Function3<? super Integer, ? super String, ? super VideoListModel, Unit> action) {
        Intrinsics.checkNotNullParameter(vodId, "vodId");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoListModel> cls = VideoListModel.class;
        ApiClient.INSTANCE.getService().getVideoRecommend(vodId).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoListModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getVideoRecommend$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoListModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getFocusList(int user_id, int page, final Function3<? super Integer, ? super String, ? super UserList, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableSource observableSourceCompose = ApiClient.INSTANCE.getService().getFocusList(user_id, page).compose(RxSchedulers.ioMain());
        final Class<UserList> cls = UserList.class;
        observableSourceCompose.subscribe(new NetCallBack<UserList>(cls) { // from class: com.mogu.tv.api.ApiManager$getFocusList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, UserList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getFocusVideoList(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super VideoListModel, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoListModel> cls = VideoListModel.class;
        ApiClient.INSTANCE.getService().getFocusVideoList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoListModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getFocusVideoList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoListModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getUserList(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super UserList, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<UserList> cls = UserList.class;
        ApiClient.INSTANCE.getService().getUserList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<UserList>(cls) { // from class: com.mogu.tv.api.ApiManager$getUserList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, UserList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getVodClever(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super VideoListModel, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoListModel> cls = VideoListModel.class;
        ApiClient.INSTANCE.getService().getVodClever(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoListModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getVodClever$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoListModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getLables(final Function3<? super Integer, ? super String, ? super LabelsModel, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<LabelsModel> cls = LabelsModel.class;
        ApiClient.INSTANCE.getService().getLabels().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<LabelsModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getLables$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, LabelsModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getShortVideoLists(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super ShortVideoList, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<ShortVideoList> cls = ShortVideoList.class;
        ApiClient.INSTANCE.getService().getShortLists(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<ShortVideoList>(cls) { // from class: com.mogu.tv.api.ApiManager$getShortVideoLists$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, ShortVideoList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getShortStarVideoLists(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super ShortStarVideoLists, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<ShortStarVideoLists> cls = ShortStarVideoLists.class;
        ApiClient.INSTANCE.getService().getShortStarLists(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<ShortStarVideoLists>(cls) { // from class: com.mogu.tv.api.ApiManager$getShortStarVideoLists$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, ShortStarVideoLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getBlobList(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super ShequListModel, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<ShequListModel> cls = ShequListModel.class;
        ApiClient.INSTANCE.getService().getBlobList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<ShequListModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getBlobList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, ShequListModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getBlobLoveList(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super ShequListLoveModel, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<ShequListLoveModel> cls = ShequListLoveModel.class;
        ApiClient.INSTANCE.getService().getBlobLoveList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<ShequListLoveModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getBlobLoveList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, ShequListLoveModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getVodDetials(String ids, final Function3<? super Integer, ? super String, ? super VideoPlayDetails, Unit> action) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<VideoPlayDetails> cls = VideoPlayDetails.class;
        ApiClient.INSTANCE.getService().getAppDetials(ids).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<VideoPlayDetails>(cls) { // from class: com.mogu.tv.api.ApiManager$getVodDetials$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VideoPlayDetails t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getUserShareList(int limit, int page, final Function3<? super Integer, ? super String, ? super UserShareList, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableSource observableSourceCompose = ApiClient.INSTANCE.getService().getUserShareList(limit, page).compose(RxSchedulers.ioMain());
        final Class<UserShareList> cls = UserShareList.class;
        observableSourceCompose.subscribe(new NetCallBack<UserShareList>(cls) { // from class: com.mogu.tv.api.ApiManager$getUserShareList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, UserShareList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getVipVideoData(int limit, int page, final Function3<? super Integer, ? super String, ? super VipVideoList, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableSource observableSourceCompose = ApiClient.INSTANCE.getService().getVipVideoData(limit, page).compose(RxSchedulers.ioMain());
        final Class<VipVideoList> cls = VipVideoList.class;
        observableSourceCompose.subscribe(new NetCallBack<VipVideoList>(cls) { // from class: com.mogu.tv.api.ApiManager$getVipVideoData$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, VipVideoList t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void postSuggest(String suggest, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(suggest, "suggest");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("suggest", suggest);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().postSuggest(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$postSuggest$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getMoguConfig(String key, final Function3<? super Integer, ? super String, ? super MoguConfig, Unit> action) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<MoguConfig> cls = MoguConfig.class;
        ApiClient.INSTANCE.getService().getAppConfig(key).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<MoguConfig>(cls) { // from class: com.mogu.tv.api.ApiManager$getMoguConfig$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, MoguConfig t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void clickAd(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        noCallBack(ApiClient.INSTANCE.getService().clickAd(id));
    }

    public final void focusUser(String id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("follow_id", Integer.valueOf(Integer.parseInt(id)));
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().focusUser(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$focusUser$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void updateUserName(String name, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("name", name);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().updateUserName(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$updateUserName$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void unfocusUser(String id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().unFocusUser(id).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$unfocusUser$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void unlockVipVIdeo(int vipid, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().unlockvipVIdeo(vipid).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$unlockVipVIdeo$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getAllAd(final Function3<? super Integer, ? super String, ? super AllAdsModel, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<AllAdsModel> cls = AllAdsModel.class;
        ApiClient.INSTANCE.getService().getAds().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<AllAdsModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getAllAd$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, AllAdsModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getCdnHost(final Function3<? super Integer, ? super String, ? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<String> cls = String.class;
        ApiClient.INSTANCE.getService().getcdnHost().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<String>(cls) { // from class: com.mogu.tv.api.ApiManager$getCdnHost$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, String t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getHostTxt(Function3<? super Integer, ? super String, ? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ApiClient.INSTANCE.getService().getHostTxt().compose(RxSchedulers.ioMain()).subscribe(new C01011(action, String.class));
    }

    public final void getUserInfo(final Function3<? super Integer, ? super String, ? super UserModel, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<UserModel> cls = UserModel.class;
        ApiClient.INSTANCE.getService().getUserInfo().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<UserModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getUserInfo$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, UserModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getVerifyCodeImage(Function3<? super Integer, ? super String, ? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        ApiClient.INSTANCE.getService().getVerifyCode().compose(RxSchedulers.ioMain()).subscribe(new C01011(action, String.class));
    }

    public final void getCacheShareCode(final Function3<? super Integer, ? super String, ? super String, Unit> action) {
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<String> cls = String.class;
        ApiClient.INSTANCE.getService().getCacheShareCode().compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<String>(cls) { // from class: com.mogu.tv.api.ApiManager$getCacheShareCode$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, String t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void loginUser(String user_name, String user_pwd, String captchaId, String yzmText, final Function3<? super Integer, ? super String, ? super LoginResult, Unit> action) {
        Intrinsics.checkNotNullParameter(user_name, "user_name");
        Intrinsics.checkNotNullParameter(user_pwd, "user_pwd");
        Intrinsics.checkNotNullParameter(captchaId, "captchaId");
        Intrinsics.checkNotNullParameter(yzmText, "yzmText");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("phone", user_name);
        map.put("password", user_pwd);
        map.put("captchaId", captchaId);
        map.put("captcha", yzmText);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<LoginResult> cls = LoginResult.class;
        ApiClient.INSTANCE.getService().loginUser(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<LoginResult>(cls) { // from class: com.mogu.tv.api.ApiManager$loginUser$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, LoginResult t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void senSMs(String user_name, String captchaId, String yzmText, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(user_name, "user_name");
        Intrinsics.checkNotNullParameter(captchaId, "captchaId");
        Intrinsics.checkNotNullParameter(yzmText, "yzmText");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("phone", user_name);
        map.put("captchaId", captchaId);
        map.put("captcha", yzmText);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().postSms(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$senSMs$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void registUser(String user_name, String user_pwd, final Function3<? super Integer, ? super String, ? super LoginResult, Unit> action) {
        Intrinsics.checkNotNullParameter(user_name, "user_name");
        Intrinsics.checkNotNullParameter(user_pwd, "user_pwd");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("phone", user_name);
        map.put("password", user_pwd);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<LoginResult> cls = LoginResult.class;
        ApiClient.INSTANCE.getService().registUser(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<LoginResult>(cls) { // from class: com.mogu.tv.api.ApiManager$registUser$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, LoginResult t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void resetPassword(String user_name, String user_pwd, String verify, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(user_name, "user_name");
        Intrinsics.checkNotNullParameter(user_pwd, "user_pwd");
        Intrinsics.checkNotNullParameter(verify, "verify");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("phone", user_name);
        map.put("password", user_pwd);
        map.put("verification", verify);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().resetPasswd(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$resetPassword$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void postShare(int shareUserID, String deviceId, String accessKey, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(accessKey, "accessKey");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("shareUserID", Integer.valueOf(shareUserID));
        map.put("deviceId", deviceId);
        map.put("accessKey", accessKey);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().postshare(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$postShare$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void saveComment(String id, String comment, int type, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(comment, "comment");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        if (type == 1) {
            map.put("vod_id", Integer.valueOf(Integer.parseInt(id)));
        } else if (type == 2) {
            map.put("blog_id", Integer.valueOf(Integer.parseInt(id)));
        } else if (type == 3) {
            map.put("vlog_id", Integer.valueOf(Integer.parseInt(id)));
        }
        map.put("comment", comment);
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        if (type == 1) {
            final Class<JustReturnMsg> cls = JustReturnMsg.class;
            ApiClient.INSTANCE.getService().saveComment(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$saveComment$$inlined$netCallBack$1
                @Override // com.mogu.tv.api.NetCallBack
                public void onResponse(int code, String msg, JustReturnMsg t) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    action.invoke(Integer.valueOf(code), msg, t);
                }
            });
        } else if (type == 2) {
            final Class<JustReturnMsg> cls2 = JustReturnMsg.class;
            ApiClient.INSTANCE.getService().saveblogComment(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls2) { // from class: com.mogu.tv.api.ApiManager$saveComment$$inlined$netCallBack$2
                @Override // com.mogu.tv.api.NetCallBack
                public void onResponse(int code, String msg, JustReturnMsg t) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    action.invoke(Integer.valueOf(code), msg, t);
                }
            });
        } else {
            if (type != 3) {
                return;
            }
            final Class<JustReturnMsg> cls3 = JustReturnMsg.class;
            ApiClient.INSTANCE.getService().saveShortComment(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls3) { // from class: com.mogu.tv.api.ApiManager$saveComment$$inlined$netCallBack$3
                @Override // com.mogu.tv.api.NetCallBack
                public void onResponse(int code, String msg, JustReturnMsg t) {
                    Intrinsics.checkNotNullParameter(msg, "msg");
                    action.invoke(Integer.valueOf(code), msg, t);
                }
            });
        }
    }

    public final void updateUser(MultipartBody.Part file, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().updateUserHead(file).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$updateUser$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void gbookSave(String comment_content, String verify, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(comment_content, "comment_content");
        Intrinsics.checkNotNullParameter(verify, "verify");
        Intrinsics.checkNotNullParameter(action, "action");
        ObservableSource observableSourceCompose = ApiClient.INSTANCE.getService().gbookSave(comment_content, verify).compose(RxSchedulers.ioMain());
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        observableSourceCompose.subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$gbookSave$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void commentLists(String vod_id, int mPage, final Function3<? super Integer, ? super String, ? super CommentLists, Unit> action) {
        Intrinsics.checkNotNullParameter(vod_id, "vod_id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("vod_id", vod_id);
        map2.put("page", Integer.valueOf(mPage));
        final Class<CommentLists> cls = CommentLists.class;
        ApiClient.INSTANCE.getService().commentLists(map).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<CommentLists>(cls) { // from class: com.mogu.tv.api.ApiManager$commentLists$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, CommentLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void shequCommentList(String blog_id, int mPage, final Function3<? super Integer, ? super String, ? super CommentLists, Unit> action) {
        Intrinsics.checkNotNullParameter(blog_id, "blog_id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("blog_id", blog_id);
        map2.put("page", Integer.valueOf(mPage));
        final Class<CommentLists> cls = CommentLists.class;
        ApiClient.INSTANCE.getService().getCommentListBlog(map).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<CommentLists>(cls) { // from class: com.mogu.tv.api.ApiManager$shequCommentList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, CommentLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void vlobCommentList(String blog_id, int mPage, final Function3<? super Integer, ? super String, ? super CommentLists, Unit> action) {
        Intrinsics.checkNotNullParameter(blog_id, "blog_id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", VItem.VIDEO_ID);
        map2.put("vlog_id", blog_id);
        map2.put("page", Integer.valueOf(mPage));
        final Class<CommentLists> cls = CommentLists.class;
        ApiClient.INSTANCE.getService().getCommentListShort(map).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<CommentLists>(cls) { // from class: com.mogu.tv.api.ApiManager$vlobCommentList$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, CommentLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void historyLists(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super HistoryLists, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<HistoryLists> cls = HistoryLists.class;
        ApiClient.INSTANCE.getService().getHistory(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<HistoryLists>(cls) { // from class: com.mogu.tv.api.ApiManager$historyLists$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, HistoryLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getUserOhterData(String userId, final Function3<? super Integer, ? super String, ? super UserOtherInfo, Unit> action) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<UserOtherInfo> cls = UserOtherInfo.class;
        ApiClient.INSTANCE.getService().getUserOhterInfo(Integer.parseInt(userId)).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<UserOtherInfo>(cls) { // from class: com.mogu.tv.api.ApiManager$getUserOhterData$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, UserOtherInfo t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public static /* synthetic */ void historyAdd$default(ApiManager apiManager, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        apiManager.historyAdd(str);
    }

    public final void historyAdd(String vod_id) {
        Intrinsics.checkNotNullParameter(vod_id, "vod_id");
        HashMap map = new HashMap();
        map.put("vod_id", Integer.valueOf(Integer.parseInt(vod_id)));
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        noCallBack(ApiClient.INSTANCE.getService().addHistory(requestBodyCreate));
    }

    public final void historyDel(String id, final Function3<? super Integer, ? super String, ? super HistoryLists, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<HistoryLists> cls = HistoryLists.class;
        ApiClient.INSTANCE.getService().deleteHistory(id).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<HistoryLists>(cls) { // from class: com.mogu.tv.api.ApiManager$historyDel$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, HistoryLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void starLists(HashMap<String, Object> queryMap, final Function3<? super Integer, ? super String, ? super HistoryLists, Unit> action) {
        Intrinsics.checkNotNullParameter(queryMap, "queryMap");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<HistoryLists> cls = HistoryLists.class;
        ApiClient.INSTANCE.getService().getStarList(queryMap).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<HistoryLists>(cls) { // from class: com.mogu.tv.api.ApiManager$starLists$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, HistoryLists t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public static /* synthetic */ void starAdd$default(ApiManager apiManager, String str, Function3 function3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        apiManager.starAdd(str, function3);
    }

    public final void starAdd(String vod_id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(vod_id, "vod_id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("vod_id", Integer.valueOf(Integer.parseInt(vod_id)));
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().addStar(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$starAdd$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void starDelDetails(String vod_id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(vod_id, "vod_id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().deleteDetailsStar(vod_id).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$starDelDetails$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void starDel(String id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().deleteStar(id).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$starDel$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void starDelSqDetails(String blobId, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(blobId, "blobId");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().blogDeleteStarDetails(Integer.parseInt(blobId)).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$starDelSqDetails$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void blogStar(String id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("blog_id", Integer.valueOf(Integer.parseInt(id)));
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().blogStar(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$blogStar$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void vLogStar(String id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        HashMap map = new HashMap();
        map.put("vlog_id", Integer.valueOf(Integer.parseInt(id)));
        RequestBody requestBodyCreate = RequestBody.create(MediaType.parse("application/json"), new Gson().toJson(map));
        Intrinsics.checkNotNullExpressionValue(requestBodyCreate, "create(MediaType.parse(\"…on\"), Gson().toJson(map))");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().shortVideoStar(requestBodyCreate).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$vLogStar$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void vLogDelete(String vlog_id, final Function3<? super Integer, ? super String, ? super JustReturnMsg, Unit> action) {
        Intrinsics.checkNotNullParameter(vlog_id, "vlog_id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<JustReturnMsg> cls = JustReturnMsg.class;
        ApiClient.INSTANCE.getService().shortVideoStarDeleteDetails(Integer.parseInt(vlog_id)).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<JustReturnMsg>(cls) { // from class: com.mogu.tv.api.ApiManager$vLogDelete$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, JustReturnMsg t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }

    public final void getDetailsShequ(String id, final Function3<? super Integer, ? super String, ? super ShequDetailsModel, Unit> action) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(action, "action");
        final Class<ShequDetailsModel> cls = ShequDetailsModel.class;
        ApiClient.INSTANCE.getService().getShequDetails(Integer.parseInt(id)).compose(RxSchedulers.ioMain()).subscribe(new NetCallBack<ShequDetailsModel>(cls) { // from class: com.mogu.tv.api.ApiManager$getDetailsShequ$$inlined$netCallBack$1
            @Override // com.mogu.tv.api.NetCallBack
            public void onResponse(int code, String msg, ShequDetailsModel t) {
                Intrinsics.checkNotNullParameter(msg, "msg");
                action.invoke(Integer.valueOf(code), msg, t);
            }
        });
    }
}
