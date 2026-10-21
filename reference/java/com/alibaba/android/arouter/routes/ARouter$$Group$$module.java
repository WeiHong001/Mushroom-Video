package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.mogu.tv.MainActivity;
import com.mogu.tv.common.arouter.ArouterUrls;
import com.mogu.tv.ui.CommentNewsActivity;
import com.mogu.tv.ui.DetailVipVideoActivity;
import com.mogu.tv.ui.DetailsActivity;
import com.mogu.tv.ui.RegistActivity;
import com.mogu.tv.ui.activity.AdviceSuggestActivity;
import com.mogu.tv.ui.activity.BiaoQianListActivity;
import com.mogu.tv.ui.activity.ImglookActivity;
import com.mogu.tv.ui.activity.MessageDetailsActivity;
import com.mogu.tv.ui.activity.PiankuActivity;
import com.mogu.tv.ui.activity.QiuPianActivity;
import com.mogu.tv.ui.activity.ShequDetailsActivity;
import com.mogu.tv.ui.activity.ShortDetailsActivity;
import com.mogu.tv.ui.activity.UserInfoActivity;
import com.mogu.tv.ui.activity.WebViewActivity;
import com.umeng.analytics.pro.ak;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ARouter$$Group$$module implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        map.put(ArouterUrls.AppArouterUrl.SheQuDetails, RouteMeta.build(RouteType.ACTIVITY, ShequDetailsActivity.class, "/module/shequdetails", ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.ADVICEACTIVITY, RouteMeta.build(RouteType.ACTIVITY, AdviceSuggestActivity.class, ArouterUrls.AppArouterUrl.ADVICEACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.BIAOQIANACTIVITY, RouteMeta.build(RouteType.ACTIVITY, BiaoQianListActivity.class, ArouterUrls.AppArouterUrl.BIAOQIANACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.COMMENTACTIVITY, RouteMeta.build(RouteType.ACTIVITY, CommentNewsActivity.class, ArouterUrls.AppArouterUrl.COMMENTACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.VideoDetails, RouteMeta.build(RouteType.ACTIVITY, DetailsActivity.class, ArouterUrls.AppArouterUrl.VideoDetails, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.IMAGEDETAILS, RouteMeta.build(RouteType.ACTIVITY, ImglookActivity.class, ArouterUrls.AppArouterUrl.IMAGEDETAILS, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.LOGINACTIVITY, RouteMeta.build(RouteType.ACTIVITY, RegistActivity.class, ArouterUrls.AppArouterUrl.LOGINACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.MAINACTIVITY, RouteMeta.build(RouteType.ACTIVITY, MainActivity.class, ArouterUrls.AppArouterUrl.MAINACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.MESSAGEDETAILS, RouteMeta.build(RouteType.ACTIVITY, MessageDetailsActivity.class, ArouterUrls.AppArouterUrl.MESSAGEDETAILS, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.PIANKUACTIVITY, RouteMeta.build(RouteType.ACTIVITY, PiankuActivity.class, ArouterUrls.AppArouterUrl.PIANKUACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.QIUPIANACTIVITY, RouteMeta.build(RouteType.ACTIVITY, QiuPianActivity.class, ArouterUrls.AppArouterUrl.QIUPIANACTIVITY, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.SHORTDETAILS, RouteMeta.build(RouteType.ACTIVITY, ShortDetailsActivity.class, ArouterUrls.AppArouterUrl.SHORTDETAILS, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.USERDETAILS, RouteMeta.build(RouteType.ACTIVITY, UserInfoActivity.class, ArouterUrls.AppArouterUrl.USERDETAILS, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.VipVideDetails, RouteMeta.build(RouteType.ACTIVITY, DetailVipVideoActivity.class, ArouterUrls.AppArouterUrl.VipVideDetails, ak.e, null, -1, Integer.MIN_VALUE));
        map.put(ArouterUrls.AppArouterUrl.WEBVIEW, RouteMeta.build(RouteType.ACTIVITY, WebViewActivity.class, ArouterUrls.AppArouterUrl.WEBVIEW, ak.e, null, -1, Integer.MIN_VALUE));
    }
}
