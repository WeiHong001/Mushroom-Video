package com.mogu.tv.common.arouter;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.alibaba.android.arouter.launcher.ARouter;
import com.amogu6.tv.R;
import com.kotlin.basiclib.base.AcManage;
import com.kotlin.basiclib.base.BaseApplicaitonKt;
import com.kotlin.basiclib.common.Actions;
import com.kotlin.basiclib.utils.ClickUtils;
import com.kotlin.basiclib.utils.FileUtils;
import com.kotlin.basiclib.utils.ToastUtil;
import com.kotlin.basiclib.utils.UrlUtils;
import com.luck.picture.lib.PictureSelector;
import com.luck.picture.lib.config.PictureConfig;
import com.luck.picture.lib.config.PictureMimeType;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.model.ShortVideoList;
import com.mogu.tv.model.VipVideoList;
import com.mogu.tv.ui.DetailVipVideoActivity;
import com.mogu.tv.utils.PlayIdSaveUtils;
import com.umeng.analytics.pro.d;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* JADX INFO: compiled from: ArouterUtils.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ&\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000b2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000fj\b\u0012\u0004\u0012\u00020\u0006`\u0010J\u000e\u0010\f\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006J\u001e\u0010\f\u001a\u00020\u00042\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000fj\b\u0012\u0004\u0012\u00020\u0006`\u0010J\u000e\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\tJ\u0016\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000bJ\u001e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006J\u0016\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u000bJ\u0006\u0010\u001e\u001a\u00020\u0004J\u0006\u0010\u001f\u001a\u00020\u0004J\u000e\u0010 \u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0006J\u0006\u0010!\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010#\u001a\u00020\u00042\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u000bJ\u0016\u0010'\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006J\u0016\u0010(\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006J\u000e\u0010)\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006J\u0016\u0010*\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u0006J\u000e\u0010-\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0006J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010$\u001a\u00020/J\u000e\u00100\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u0006¨\u00061"}, d2 = {"Lcom/mogu/tv/common/arouter/ArouterUtils;", "", "()V", "clickAd", "", "id", "", "showHeadChange", d.R, "Landroid/app/Activity;", "reuqstCode", "", "showPhoto", PictureConfig.EXTRA_POSITION, "urls2", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, "photos", "showVideo", "activity", "showcamrae", "num", "toAdvice", "ids", "toBiaoQianVideoList", "selectId", "name", "toComment", "type", "toLoginActivity", "toMessageDetails", "toPianku", "toQiuPianActivity", "toShequ", "toShortDetails", "item", "Lcom/mogu/tv/model/ShortVideoList$Data;", "isZan", "toTouPin", "toTypeMore", "toUrl", "toUrlPraseJump", "toUserDetails", "userid", "toVideoDetails", "toVipVideoDetails", "Lcom/mogu/tv/model/VipVideoList$Data;", "toWeb", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ArouterUtils {
    public static final ArouterUtils INSTANCE = new ArouterUtils();

    private ArouterUtils() {
    }

    public final void toUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        ARouter.getInstance().build(Uri.parse(url)).navigation();
    }

    public final void toVideoDetails(String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        if (StringsKt.startsWith$default(ids, "http", false, 2, (Object) null)) {
            Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
            Intrinsics.checkNotNullExpressionValue(activityCurrentActivity, "getAppManager().currentActivity()");
            toUrlPraseJump(activityCurrentActivity, ids);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("ids", ids);
            ARouter.getInstance().build(ArouterUrls.AppArouterUrl.VideoDetails).with(bundle).navigation();
        }
    }

    public final void toVipVideoDetails(VipVideoList.Data item) {
        Intrinsics.checkNotNullParameter(item, "item");
        Bundle bundle = new Bundle();
        DetailVipVideoActivity.INSTANCE.setVipData(item);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.VipVideDetails).with(bundle).navigation();
    }

    public final void toShequ(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (StringsKt.startsWith$default(id, "http", false, 2, (Object) null)) {
            Activity activityCurrentActivity = AcManage.getAppManager().currentActivity();
            Intrinsics.checkNotNullExpressionValue(activityCurrentActivity, "getAppManager().currentActivity()");
            toUrlPraseJump(activityCurrentActivity, id);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("id", id);
            ARouter.getInstance().build(ArouterUrls.AppArouterUrl.SheQuDetails).with(bundle).navigation();
        }
    }

    public final void toMessageDetails() {
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.MESSAGEDETAILS).with(new Bundle()).navigation();
    }

    public final void toShortDetails(ShortVideoList.Data item, int isZan) {
        Intrinsics.checkNotNullParameter(item, "item");
        Bundle bundle = new Bundle();
        String name = item.getUser() != null ? item.getUser().getName() : "蘑菇用户";
        bundle.putString("playUrl", item.getPlay_url());
        bundle.putString("name", name);
        bundle.putString("content", item.getTitle());
        bundle.putString("comments", item.getComments());
        bundle.putString("favorites", item.getFavorites());
        ShortVideoList.User user = item.getUser();
        bundle.putString("photo", user != null ? user.getAvatar() : null);
        bundle.putString("id", item.getId());
        bundle.putInt("isZan", isZan);
        PlayIdSaveUtils.INSTANCE.savePlayData(item.getId(), item.getPlay_url());
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.SHORTDETAILS).with(bundle).navigation();
    }

    public final void toComment(String ids, int type) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Bundle bundle = new Bundle();
        bundle.putString("id", ids);
        bundle.putInt("type", type);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.COMMENTACTIVITY).with(bundle).navigation();
    }

    public final void toAdvice(String ids) {
        Intrinsics.checkNotNullParameter(ids, "ids");
        Bundle bundle = new Bundle();
        bundle.putString("id", ids);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.ADVICEACTIVITY).with(bundle).navigation();
    }

    public final void toPianku(String selectId) {
        Intrinsics.checkNotNullParameter(selectId, "selectId");
        Bundle bundle = new Bundle();
        bundle.putString("id", selectId);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.PIANKUACTIVITY).with(bundle).navigation();
    }

    public final void toUserDetails(String userid) {
        Intrinsics.checkNotNullParameter(userid, "userid");
        Bundle bundle = new Bundle();
        bundle.putString("id", userid);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.USERDETAILS).with(bundle).navigation();
    }

    public final void toBiaoQianVideoList(String selectId, String name) {
        Intrinsics.checkNotNullParameter(selectId, "selectId");
        Intrinsics.checkNotNullParameter(name, "name");
        Bundle bundle = new Bundle();
        bundle.putString("id", selectId);
        bundle.putString("name", name);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.BIAOQIANACTIVITY).with(bundle).navigation();
    }

    public final void toWeb(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Bundle bundle = new Bundle();
        bundle.putString(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, url);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.WEBVIEW).with(bundle).navigation();
    }

    public final void toTypeMore(String id, String name) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Bundle bundle = new Bundle();
        bundle.putString("id", id);
        bundle.putString("name", name);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.TYPEMORELIST).with(bundle).navigation();
    }

    public final void toTouPin(String name, String url) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Bundle bundle = new Bundle();
        if (!StringsKt.contains$default((CharSequence) url, (CharSequence) "m3u8", false, 2, (Object) null)) {
            url = url + ".m3u8";
        }
        bundle.putString(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, url);
        bundle.putString("name", name);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.TOUPIN).with(bundle).navigation();
    }

    public final void clickAd(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        if (ClickUtils.INSTANCE.isDoubleClick()) {
            return;
        }
        ApiManager.INSTANCE.clickAd(id);
    }

    public final void toUrlPraseJump(Activity activity, String url) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(url, "url");
        String str = url;
        boolean z = true;
        if (str.length() == 0) {
            return;
        }
        if (StringsKt.startsWith$default(url, "http", false, 2, (Object) null)) {
            activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
            return;
        }
        if (StringsKt.startsWith$default(url, "moguapp://vod?", false, 2, (Object) null)) {
            Map<String, String> uRLparams = UrlUtils.getURLparams(url);
            if (uRLparams != null && !uRLparams.isEmpty()) {
                z = false;
            }
            if (z) {
                return;
            }
            String str2 = uRLparams.get("id");
            if (str2 == null) {
                str2 = "";
            }
            toVideoDetails(str2);
            return;
        }
        if (StringsKt.startsWith$default(url, "mqq://", false, 2, (Object) null)) {
            try {
                activity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url)));
                return;
            } catch (Exception e) {
                ToastUtil.INSTANCE.toast("请前去安装QQ");
                e.printStackTrace();
                return;
            }
        }
        str.length();
    }

    public final void toLoginActivity() {
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.LOGINACTIVITY).navigation();
    }

    public final void toQiuPianActivity() {
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.QIUPIANACTIVITY).navigation();
    }

    public final void showcamrae(Activity context, int num) {
        Intrinsics.checkNotNullParameter(context, "context");
        showcamrae(context, num, Actions.INSTANCE.getREQUEST_IMAGE());
    }

    public final void showPhoto(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add(url);
        showPhoto(arrayList);
    }

    public final void showPhoto(ArrayList<String> photos) {
        Intrinsics.checkNotNullParameter(photos, "photos");
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, photos);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.IMAGEDETAILS).with(bundle).navigation();
    }

    public final void showPhoto(int position, ArrayList<String> urls2) {
        Intrinsics.checkNotNullParameter(urls2, "urls2");
        Bundle bundle = new Bundle();
        bundle.putStringArrayList(IjkMediaPlayer.OnNativeInvokeListener.ARG_URL, urls2);
        bundle.putInt(PictureConfig.EXTRA_POSITION, position);
        ARouter.getInstance().build(ArouterUrls.AppArouterUrl.IMAGEDETAILS).with(bundle).navigation();
    }

    public final void showHeadChange(Activity context, int reuqstCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        PictureSelector.create(context).openGallery(PictureMimeType.ofImage()).theme(R.style.picture_default_style).maxSelectNum(1).imageSpanCount(4).enableCrop(true).showCropFrame(true).scaleEnabled(true).showCropGrid(false).withAspectRatio(2, 2).selectionMode(2).previewImage(true).compressSavePath(FileUtils.getImageCacheFile(BaseApplicaitonKt.getApplication())).isCamera(true).compress(true).sizeMultiplier(0.5f).isGif(true).openClickSound(false).previewEggs(true).cropCompressQuality(90).minimumCompressSize(100).forResult(reuqstCode);
    }

    public final void showcamrae(Activity context, int num, int reuqstCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        PictureSelector.create(context).openGallery(PictureMimeType.ofImage()).theme(R.style.picture_default_style).maxSelectNum(num).imageSpanCount(4).selectionMode(2).previewImage(true).compressSavePath(FileUtils.getImageCacheFile(BaseApplicaitonKt.getApplication())).isCamera(true).compress(true).sizeMultiplier(0.5f).isGif(true).openClickSound(false).previewEggs(true).cropCompressQuality(70).minimumCompressSize(100).forResult(reuqstCode);
    }

    public final void showVideo(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        PictureSelector.create(activity).openGallery(PictureMimeType.ofVideo()).theme(R.style.picture_default_style).maxSelectNum(1).selectionMode(1).previewVideo(true).isCamera(true).openClickSound(false).videoQuality(0).recordVideoSecond(60).forResult(Actions.INSTANCE.getREQUEST_VIDEO());
    }
}
