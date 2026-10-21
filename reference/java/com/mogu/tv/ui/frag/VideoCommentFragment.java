package com.mogu.tv.ui.frag;

import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.amogu6.tv.R;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.widget.RefreshLayout;
import com.mogu.tv.adapter.NewCommentAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.arouter.ArouterUtils;
import com.mogu.tv.databinding.FragCommentBinding;
import com.mogu.tv.main.UserManagerKt;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.model.CommentSuccess;
import com.mogu.tv.model.EventCommentNumber;
import com.mogu.tv.view.QsEmptyView;
import com.scwang.smartrefresh.layout.listener.OnLoadMoreListener;
import com.scwang.smartrefresh.layout.listener.OnRefreshListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;

/* JADX INFO: compiled from: VideoCommentFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010 \u001a\u00020!H\u0002J\u0010\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020$H\u0007J\b\u0010%\u001a\u00020!H\u0002J\b\u0010&\u001a\u00020!H\u0016J\b\u0010'\u001a\u00020!H\u0016J\b\u0010(\u001a\u00020!H\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR*\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u000e\u0010\u001e\u001a\u00020\u001fX\u0082.¢\u0006\u0002\n\u0000¨\u0006)"}, d2 = {"Lcom/mogu/tv/ui/frag/VideoCommentFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragCommentBinding;", "()V", "mAdapter", "Lcom/mogu/tv/adapter/NewCommentAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/NewCommentAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/NewCommentAdapter;)V", "mData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "Lkotlin/collections/ArrayList;", "getMData", "()Ljava/util/ArrayList;", "setMData", "(Ljava/util/ArrayList;)V", "mId", "", "getMId", "()Ljava/lang/String;", "setMId", "(Ljava/lang/String;)V", "mPage", "", "getMPage", "()I", "setMPage", "(I)V", "qsEmptyView", "Lcom/mogu/tv/view/QsEmptyView;", "addEmptyView", "", "commentSuccess", "item", "Lcom/mogu/tv/model/CommentSuccess;", "getServerData", "initData", "initView", "onDestroy", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class VideoCommentFragment extends CommonBaseFragment<FragCommentBinding> {
    private QsEmptyView qsEmptyView;
    private String mId = "";
    private int mPage = 1;
    private NewCommentAdapter mAdapter = new NewCommentAdapter();
    private ArrayList<CommentLists.CommentItem> mData = new ArrayList<>();

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        RelativeLayout relativeLayout;
        EventBusUtil.INSTANCE.register(this);
        FragCommentBinding binding = getBinding();
        RecyclerView recyclerView = binding != null ? binding.rvComment : null;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        }
        FragCommentBinding binding2 = getBinding();
        RecyclerView recyclerView2 = binding2 != null ? binding2.rvComment : null;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
        FragCommentBinding binding3 = getBinding();
        if (binding3 != null && (relativeLayout = binding3.rlBottomComment) != null) {
            UserManagerKt.LoginClick(relativeLayout, new Function0<Unit>() { // from class: com.mogu.tv.ui.frag.VideoCommentFragment.initView.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ArouterUtils.INSTANCE.toComment(VideoCommentFragment.this.getMId(), 1);
                }
            });
        }
        addEmptyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBusUtil.INSTANCE.unregister(this);
    }

    @Subscribe
    public final void commentSuccess(CommentSuccess item) {
        FragCommentBinding binding;
        RecyclerView recyclerView;
        Intrinsics.checkNotNullParameter(item, "item");
        if (isDetached() || (binding = getBinding()) == null || (recyclerView = binding.rvComment) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() { // from class: com.mogu.tv.ui.frag.VideoCommentFragment$commentSuccess$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                RefreshLayout refreshLayout;
                this.this$0.setMPage(1);
                FragCommentBinding binding2 = this.this$0.getBinding();
                if (binding2 == null || (refreshLayout = binding2.refreshLayout) == null) {
                    return;
                }
                refreshLayout.autoRefresh();
            }
        }, 300L);
    }

    public final String getMId() {
        return this.mId;
    }

    public final void setMId(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mId = str;
    }

    public final int getMPage() {
        return this.mPage;
    }

    public final void setMPage(int i) {
        this.mPage = i;
    }

    public final NewCommentAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(NewCommentAdapter newCommentAdapter) {
        Intrinsics.checkNotNullParameter(newCommentAdapter, "<set-?>");
        this.mAdapter = newCommentAdapter;
    }

    public final ArrayList<CommentLists.CommentItem> getMData() {
        return this.mData;
    }

    public final void setMData(ArrayList<CommentLists.CommentItem> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mData = arrayList;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        RefreshLayout refreshLayout;
        RefreshLayout refreshLayout2;
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("id") : null;
        if (string == null) {
            string = "";
        }
        this.mId = string;
        FragCommentBinding binding = getBinding();
        if (binding != null && (refreshLayout2 = binding.refreshLayout) != null) {
            refreshLayout2.setOnRefreshListener(new OnRefreshListener() { // from class: com.mogu.tv.ui.frag.VideoCommentFragment$$ExternalSyntheticLambda1
                @Override // com.scwang.smartrefresh.layout.listener.OnRefreshListener
                public final void onRefresh(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout3) {
                    VideoCommentFragment.m303initData$lambda1(this.f$0, refreshLayout3);
                }
            });
        }
        FragCommentBinding binding2 = getBinding();
        if (binding2 != null && (refreshLayout = binding2.refreshLayout) != null) {
            refreshLayout.setOnLoadMoreListener(new OnLoadMoreListener() { // from class: com.mogu.tv.ui.frag.VideoCommentFragment$$ExternalSyntheticLambda0
                @Override // com.scwang.smartrefresh.layout.listener.OnLoadMoreListener
                public final void onLoadMore(com.scwang.smartrefresh.layout.api.RefreshLayout refreshLayout3) {
                    VideoCommentFragment.m304initData$lambda2(this.f$0, refreshLayout3);
                }
            });
        }
        this.mAdapter.setNewData(this.mData);
        getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-1, reason: not valid java name */
    public static final void m303initData$lambda1(VideoCommentFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage = 1;
        this$0.getServerData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: initData$lambda-2, reason: not valid java name */
    public static final void m304initData$lambda2(VideoCommentFragment this$0, com.scwang.smartrefresh.layout.api.RefreshLayout it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        this$0.mPage++;
        this$0.getServerData();
    }

    private final void addEmptyView() {
        QsEmptyView qsEmptyView = new QsEmptyView(getActivity());
        this.qsEmptyView = qsEmptyView;
        qsEmptyView.setEmprtyText("还没有人评论哦，快去第一个评论吧");
        QsEmptyView qsEmptyView2 = this.qsEmptyView;
        QsEmptyView qsEmptyView3 = null;
        if (qsEmptyView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
            qsEmptyView2 = null;
        }
        qsEmptyView2.setResIcon(R.mipmap.ic_empty_data);
        QsEmptyView qsEmptyView4 = this.qsEmptyView;
        if (qsEmptyView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
            qsEmptyView4 = null;
        }
        qsEmptyView4.showState(3);
        NewCommentAdapter newCommentAdapter = this.mAdapter;
        QsEmptyView qsEmptyView5 = this.qsEmptyView;
        if (qsEmptyView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
        } else {
            qsEmptyView3 = qsEmptyView5;
        }
        newCommentAdapter.setEmptyView(qsEmptyView3);
    }

    private final void getServerData() {
        ApiManager.INSTANCE.commentLists(this.mId, this.mPage, new Function3<Integer, String, CommentLists, Unit>() { // from class: com.mogu.tv.ui.frag.VideoCommentFragment.getServerData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, CommentLists commentLists) {
                invoke(num.intValue(), str, commentLists);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, CommentLists commentLists) {
                RefreshLayout refreshLayout;
                FragCommentBinding binding;
                RefreshLayout refreshLayout2;
                List<CommentLists.CommentItem> arrayList;
                RefreshLayout refreshLayout3;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (VideoCommentFragment.this.isDetached() || VideoCommentFragment.this.getBinding() == null) {
                    return;
                }
                QsEmptyView qsEmptyView = null;
                if (VideoCommentFragment.this.getMPage() == 1) {
                    VideoCommentFragment.this.getMData().clear();
                    VideoCommentFragment.this.getMAdapter().setNewData(VideoCommentFragment.this.getMData());
                    QsEmptyView qsEmptyView2 = VideoCommentFragment.this.qsEmptyView;
                    if (qsEmptyView2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
                        qsEmptyView2 = null;
                    }
                    qsEmptyView2.showState(0);
                    FragCommentBinding binding2 = VideoCommentFragment.this.getBinding();
                    if (binding2 != null && (refreshLayout3 = binding2.refreshLayout) != null) {
                        refreshLayout3.finishRefresh();
                    }
                } else {
                    FragCommentBinding binding3 = VideoCommentFragment.this.getBinding();
                    if (binding3 != null && (refreshLayout = binding3.refreshLayout) != null) {
                        refreshLayout.finishLoadMore();
                    }
                }
                if (i != 200) {
                    QsEmptyView qsEmptyView3 = VideoCommentFragment.this.qsEmptyView;
                    if (qsEmptyView3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("qsEmptyView");
                    } else {
                        qsEmptyView = qsEmptyView3;
                    }
                    qsEmptyView.showState(1);
                } else {
                    EventBusUtil.INSTANCE.post(new EventCommentNumber(commentLists != null ? commentLists.getTotal() : 0));
                    NewCommentAdapter mAdapter = VideoCommentFragment.this.getMAdapter();
                    if (commentLists == null || (arrayList = commentLists.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mAdapter.addData((Collection) arrayList);
                }
                if (VideoCommentFragment.this.getBinding() == null || (binding = VideoCommentFragment.this.getBinding()) == null || (refreshLayout2 = binding.refreshLayout) == null) {
                    return;
                }
                refreshLayout2.finishRefresh();
            }
        });
    }
}
