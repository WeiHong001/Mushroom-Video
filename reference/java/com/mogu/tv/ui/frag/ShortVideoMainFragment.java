package com.mogu.tv.ui.frag;

import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.amogu6.tv.R;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.kotlin.basiclib.base.CommonBaseFragment;
import com.kotlin.basiclib.utils.EventBusUtil;
import com.kotlin.basiclib.utils.SpUtil;
import com.mogu.tv.adapter.ShortCommentAdapter;
import com.mogu.tv.adapter.ShortFragment2LazyAdapter;
import com.mogu.tv.api.ApiManager;
import com.mogu.tv.common.cache.CacheKey;
import com.mogu.tv.databinding.FragShortvideoBinding;
import com.mogu.tv.model.ClearPositionEvent;
import com.mogu.tv.model.CommentLists;
import com.mogu.tv.model.EventCommentNumber;
import com.mogu.tv.model.EventShowShortComment;
import com.mogu.tv.model.JustReturnMsg;
import com.mogu.tv.model.ShortVideoList;
import com.mogu.tv.utils.PlayIdSaveUtils;
import com.mogu.tv.utils.RecyclerViewUtil;
import com.mogu.tv.utils.SoftKeyBoardListener;
import com.mogu.tv.view.InputTextMsgDialog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: ShortVideoMainFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020.2\u0006\u00100\u001a\u000201H\u0007J\b\u00102\u001a\u00020.H\u0002J\b\u00103\u001a\u00020.H\u0002J\b\u00104\u001a\u00020\u0019H\u0002J\b\u00105\u001a\u00020.H\u0016J\b\u00106\u001a\u00020.H\u0002J\b\u00107\u001a\u00020.H\u0002J\b\u00108\u001a\u00020.H\u0016J\b\u00109\u001a\u00020.H\u0016J\b\u0010:\u001a\u00020.H\u0002J\b\u0010;\u001a\u00020.H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR*\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\b\u0012\u0004\u0012\u00020\u0010`\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR*\u0010\u001f\u001a\u0012\u0012\u0004\u0012\u00020 0\u000fj\b\u0012\u0004\u0012\u00020 `\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\u0013\"\u0004\b\"\u0010\u0015R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010'\u001a\u00020(X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006<"}, d2 = {"Lcom/mogu/tv/ui/frag/ShortVideoMainFragment;", "Lcom/kotlin/basiclib/base/CommonBaseFragment;", "Lcom/mogu/tv/databinding/FragShortvideoBinding;", "()V", "bottomSheetDialog", "Lcom/google/android/material/bottomsheet/BottomSheetDialog;", "inputTextMsgDialog", "Lcom/mogu/tv/view/InputTextMsgDialog;", "mAdapter", "Lcom/mogu/tv/adapter/ShortCommentAdapter;", "getMAdapter", "()Lcom/mogu/tv/adapter/ShortCommentAdapter;", "setMAdapter", "(Lcom/mogu/tv/adapter/ShortCommentAdapter;)V", "mCommentData", "Ljava/util/ArrayList;", "Lcom/mogu/tv/model/CommentLists$CommentItem;", "Lkotlin/collections/ArrayList;", "getMCommentData", "()Ljava/util/ArrayList;", "setMCommentData", "(Ljava/util/ArrayList;)V", "mCommentId", "", "mCommentPage", "", "mCurrentPage", "getMCurrentPage", "()I", "setMCurrentPage", "(I)V", "mDatas", "Lcom/mogu/tv/model/ShortVideoList$Data;", "getMDatas", "setMDatas", "mKeyBoardListener", "Lcom/mogu/tv/utils/SoftKeyBoardListener;", "mPagerAdapter", "Lcom/mogu/tv/adapter/ShortFragment2LazyAdapter;", "mRecyclerViewUtil", "Lcom/mogu/tv/utils/RecyclerViewUtil;", "rv_dialog_lists", "Landroidx/recyclerview/widget/RecyclerView;", "slideOffset", "", "dismissInputDialog", "", "eventPostPlayUrl", "item", "Lcom/mogu/tv/model/EventShowShortComment;", "getCommentList", "getVideoData", "getWindowHeight", "initData", "initInputTextMsgDialog", "initListener", "initView", "onDestroy", "showInputTextMsgDialog", "showSheetDialog", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ShortVideoMainFragment extends CommonBaseFragment<FragShortvideoBinding> {
    private BottomSheetDialog bottomSheetDialog;
    private InputTextMsgDialog inputTextMsgDialog;
    private SoftKeyBoardListener mKeyBoardListener;
    private ShortFragment2LazyAdapter mPagerAdapter;
    private RecyclerView rv_dialog_lists;
    private float slideOffset;
    private ArrayList<ShortVideoList.Data> mDatas = new ArrayList<>();
    private int mCurrentPage = SpUtil.INSTANCE.getInt(CacheKey.INSTANCE.getSHORTVIDEOPAGE(), 1);
    private String mCommentId = "0";
    private int mCommentPage = 1;
    private final RecyclerViewUtil mRecyclerViewUtil = new RecyclerViewUtil();
    private ArrayList<CommentLists.CommentItem> mCommentData = new ArrayList<>();
    private ShortCommentAdapter mAdapter = new ShortCommentAdapter();

    public final ArrayList<ShortVideoList.Data> getMDatas() {
        return this.mDatas;
    }

    public final void setMDatas(ArrayList<ShortVideoList.Data> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mDatas = arrayList;
    }

    public final int getMCurrentPage() {
        return this.mCurrentPage;
    }

    public final void setMCurrentPage(int i) {
        this.mCurrentPage = i;
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initData() {
        getVideoData();
    }

    public final ArrayList<CommentLists.CommentItem> getMCommentData() {
        return this.mCommentData;
    }

    public final void setMCommentData(ArrayList<CommentLists.CommentItem> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.mCommentData = arrayList;
    }

    public final ShortCommentAdapter getMAdapter() {
        return this.mAdapter;
    }

    public final void setMAdapter(ShortCommentAdapter shortCommentAdapter) {
        Intrinsics.checkNotNullParameter(shortCommentAdapter, "<set-?>");
        this.mAdapter = shortCommentAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getVideoData() {
        HashMap<String, Object> map = new HashMap<>();
        HashMap<String, Object> map2 = map;
        map2.put("limit", "6");
        map2.put("page", String.valueOf(this.mCurrentPage));
        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getSHORTVIDEOPAGE(), Integer.valueOf(this.mCurrentPage + 1));
        ApiManager.INSTANCE.getShortVideoLists(map, new Function3<Integer, String, ShortVideoList, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.getVideoData.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, ShortVideoList shortVideoList) {
                invoke(num.intValue(), str, shortVideoList);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, ShortVideoList shortVideoList) {
                List<ShortVideoList.Data> arrayList;
                List<ShortVideoList.Data> list;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (ShortVideoMainFragment.this.isDetached() || ShortVideoMainFragment.this.getBinding() == null) {
                    return;
                }
                if (ShortVideoMainFragment.this.getMCurrentPage() == 1) {
                    ShortVideoMainFragment.this.getMDatas().clear();
                }
                ShortFragment2LazyAdapter shortFragment2LazyAdapter = null;
                if (i == 200) {
                    ArrayList<ShortVideoList.Data> mDatas = ShortVideoMainFragment.this.getMDatas();
                    if (shortVideoList == null || (arrayList = shortVideoList.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mDatas.addAll(arrayList);
                    if (shortVideoList != null && (list = shortVideoList.getList()) != null) {
                        for (ShortVideoList.Data data : list) {
                            PlayIdSaveUtils.INSTANCE.savePlayData(data.getId(), data.getPlay_url());
                        }
                    }
                    List<ShortVideoList.Data> list2 = shortVideoList != null ? shortVideoList.getList() : null;
                    if (list2 == null || list2.isEmpty()) {
                        SpUtil.INSTANCE.saveValue(CacheKey.INSTANCE.getSHORTVIDEOPAGE(), 1);
                        ShortVideoMainFragment.this.setMCurrentPage(1);
                        ShortVideoMainFragment.this.getVideoData();
                    }
                }
                if (ShortVideoMainFragment.this.getBinding() != null) {
                    ShortFragment2LazyAdapter shortFragment2LazyAdapter2 = ShortVideoMainFragment.this.mPagerAdapter;
                    if (shortFragment2LazyAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("mPagerAdapter");
                    } else {
                        shortFragment2LazyAdapter = shortFragment2LazyAdapter2;
                    }
                    shortFragment2LazyAdapter.notifyDataSetChanged();
                }
            }
        });
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void eventPostPlayUrl(EventShowShortComment item) {
        Intrinsics.checkNotNullParameter(item, "item");
        if (isDetached() || getBinding() == null) {
            return;
        }
        this.mCommentId = item.getId();
        this.mCommentPage = 1;
        getCommentList();
        this.slideOffset = 0.0f;
        BottomSheetDialog bottomSheetDialog = this.bottomSheetDialog;
        if (bottomSheetDialog != null) {
            bottomSheetDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void getCommentList() {
        ApiManager.INSTANCE.vlobCommentList(this.mCommentId, this.mCommentPage, new Function3<Integer, String, CommentLists, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.getCommentList.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str, CommentLists commentLists) {
                invoke(num.intValue(), str, commentLists);
                return Unit.INSTANCE;
            }

            public final void invoke(int i, String msg, CommentLists commentLists) {
                List<CommentLists.CommentItem> arrayList;
                Intrinsics.checkNotNullParameter(msg, "msg");
                if (ShortVideoMainFragment.this.isDetached() || ShortVideoMainFragment.this.getBinding() == null) {
                    return;
                }
                boolean z = true;
                if (ShortVideoMainFragment.this.mCommentPage == 1) {
                    ShortVideoMainFragment.this.getMCommentData().clear();
                    ShortVideoMainFragment.this.getMAdapter().setNewData(ShortVideoMainFragment.this.getMCommentData());
                } else {
                    ShortVideoMainFragment.this.getMAdapter().loadMoreComplete();
                }
                if (i == 200) {
                    EventBusUtil.INSTANCE.post(new EventCommentNumber(commentLists != null ? commentLists.getTotal() : 0));
                    ShortCommentAdapter mAdapter = ShortVideoMainFragment.this.getMAdapter();
                    if (commentLists == null || (arrayList = commentLists.getList()) == null) {
                        arrayList = new ArrayList<>();
                    }
                    mAdapter.addData((Collection) arrayList);
                }
                if (ShortVideoMainFragment.this.getBinding() != null) {
                    List<CommentLists.CommentItem> list = commentLists != null ? commentLists.getList() : null;
                    if (list != null && !list.isEmpty()) {
                        z = false;
                    }
                    if (z) {
                        ShortVideoMainFragment.this.getMAdapter().loadMoreEnd(false);
                    }
                }
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        EventBusUtil.INSTANCE.unregister(this);
        super.onDestroy();
    }

    @Override // com.kotlin.basiclib.base.CommonBaseFragment
    public void initView() {
        ViewPager2 viewPager2;
        EventBusUtil.INSTANCE.register(this);
        this.mPagerAdapter = new ShortFragment2LazyAdapter(this, this.mDatas);
        FragShortvideoBinding binding = getBinding();
        if (binding != null) {
            ViewPager2 viewPager3 = binding.viewPager;
            ShortFragment2LazyAdapter shortFragment2LazyAdapter = this.mPagerAdapter;
            View childAt = null;
            if (shortFragment2LazyAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("mPagerAdapter");
                shortFragment2LazyAdapter = null;
            }
            viewPager3.setAdapter(shortFragment2LazyAdapter);
            binding.viewPager.setOffscreenPageLimit(1);
            FragShortvideoBinding binding2 = getBinding();
            if (binding2 != null && (viewPager2 = binding2.viewPager) != null) {
                childAt = viewPager2.getChildAt(0);
            }
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
            ((RecyclerView) childAt).setItemViewCacheSize(10);
            binding.viewPager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment$initView$1$1
                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int position) {
                    super.onPageSelected(position);
                    EventBus.getDefault().post(new ClearPositionEvent(true));
                    if (position == this.this$0.getMDatas().size() - 2) {
                        ShortVideoMainFragment shortVideoMainFragment = this.this$0;
                        shortVideoMainFragment.setMCurrentPage(shortVideoMainFragment.getMCurrentPage() + 1);
                        this.this$0.getVideoData();
                        ShortFragment2LazyAdapter shortFragment2LazyAdapter2 = this.this$0.mPagerAdapter;
                        if (shortFragment2LazyAdapter2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("mPagerAdapter");
                            shortFragment2LazyAdapter2 = null;
                        }
                        shortFragment2LazyAdapter2.notifyDataSetChanged();
                    }
                }
            });
        }
        showSheetDialog();
    }

    private final void showSheetDialog() {
        BottomSheetDialog bottomSheetDialog = this.bottomSheetDialog;
        if (bottomSheetDialog != null) {
            if (bottomSheetDialog != null) {
                bottomSheetDialog.show();
                return;
            }
            return;
        }
        View viewInflate = View.inflate(requireActivity(), R.layout.dialog_bottomsheet, null);
        View viewFindViewById = viewInflate.findViewById(R.id.dialog_bottomsheet_iv_close);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.widget.ImageView");
        View viewFindViewById2 = viewInflate.findViewById(R.id.dialog_bottomsheet_rv_lists);
        Intrinsics.checkNotNull(viewFindViewById2, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
        this.rv_dialog_lists = (RecyclerView) viewFindViewById2;
        RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.rl_comment);
        ((ImageView) viewFindViewById).setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortVideoMainFragment.m290showSheetDialog$lambda1(this.f$0, view);
            }
        });
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShortVideoMainFragment.m291showSheetDialog$lambda2(this.f$0, view);
            }
        });
        RecyclerView recyclerView = this.rv_dialog_lists;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
        }
        RecyclerView recyclerView2 = this.rv_dialog_lists;
        if (recyclerView2 != null) {
            recyclerView2.setLayoutManager(new LinearLayoutManager(requireActivity()));
        }
        RecyclerView recyclerView3 = this.rv_dialog_lists;
        if (recyclerView3 != null) {
            recyclerView3.setItemAnimator(new DefaultItemAnimator());
        }
        RecyclerView recyclerView4 = this.rv_dialog_lists;
        if (recyclerView4 != null) {
            recyclerView4.setAdapter(this.mAdapter);
        }
        this.mAdapter.setNewData(this.mCommentData);
        this.mAdapter.setLoadMoreView(new SimpleLoadMoreView());
        this.mAdapter.setOnLoadMoreListener(new BaseQuickAdapter.RequestLoadMoreListener() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.showSheetDialog.3
            @Override // com.chad.library.adapter.base.BaseQuickAdapter.RequestLoadMoreListener
            public void onLoadMoreRequested() {
                ShortVideoMainFragment.this.mCommentPage++;
                ShortVideoMainFragment.this.getCommentList();
            }
        }, this.rv_dialog_lists);
        initListener();
        BottomSheetDialog bottomSheetDialog2 = new BottomSheetDialog(requireActivity(), R.style.dialog);
        this.bottomSheetDialog = bottomSheetDialog2;
        bottomSheetDialog2.setContentView(viewInflate);
        BottomSheetDialog bottomSheetDialog3 = this.bottomSheetDialog;
        if (bottomSheetDialog3 != null) {
            bottomSheetDialog3.setCanceledOnTouchOutside(true);
        }
        Object parent = viewInflate.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
        final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from((View) parent);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(view.parent as View)");
        bottomSheetBehaviorFrom.setPeekHeight(getWindowHeight());
        bottomSheetBehaviorFrom.setBottomSheetCallback(new BottomSheetBehavior.BottomSheetCallback() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.showSheetDialog.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onStateChanged(View bottomSheet, int newState) {
                BottomSheetDialog bottomSheetDialog4;
                Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
                if (newState != 2) {
                    if (newState != 5) {
                        return;
                    }
                    bottomSheetBehaviorFrom.setState(4);
                } else {
                    if (this.slideOffset > -0.28d || (bottomSheetDialog4 = this.bottomSheetDialog) == null) {
                        return;
                    }
                    bottomSheetDialog4.dismiss();
                }
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public void onSlide(View bottomSheet, float slideOffset) {
                Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
                this.slideOffset = slideOffset;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showSheetDialog$lambda-1, reason: not valid java name */
    public static final void m290showSheetDialog$lambda1(ShortVideoMainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BottomSheetDialog bottomSheetDialog = this$0.bottomSheetDialog;
        Intrinsics.checkNotNull(bottomSheetDialog);
        bottomSheetDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: showSheetDialog$lambda-2, reason: not valid java name */
    public static final void m291showSheetDialog$lambda2(ShortVideoMainFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.initInputTextMsgDialog();
    }

    private final void initInputTextMsgDialog() {
        dismissInputDialog();
        if (this.inputTextMsgDialog == null) {
            InputTextMsgDialog inputTextMsgDialog = new InputTextMsgDialog(requireActivity(), R.style.dialog);
            this.inputTextMsgDialog = inputTextMsgDialog;
            inputTextMsgDialog.setmOnTextSendListener(new InputTextMsgDialog.OnTextSendListener() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.initInputTextMsgDialog.1
                @Override // com.mogu.tv.view.InputTextMsgDialog.OnTextSendListener
                public void dismiss() {
                }

                @Override // com.mogu.tv.view.InputTextMsgDialog.OnTextSendListener
                public void onTextSend(String msg) {
                    ApiManager apiManager = ApiManager.INSTANCE;
                    String str = ShortVideoMainFragment.this.mCommentId;
                    if (msg == null) {
                        msg = "";
                    }
                    final ShortVideoMainFragment shortVideoMainFragment = ShortVideoMainFragment.this;
                    apiManager.saveComment(str, msg, 3, new Function3<Integer, String, JustReturnMsg, Unit>() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment$initInputTextMsgDialog$1$onTextSend$1
                        {
                            super(3);
                        }

                        @Override // kotlin.jvm.functions.Function3
                        public /* bridge */ /* synthetic */ Unit invoke(Integer num, String str2, JustReturnMsg justReturnMsg) {
                            invoke(num.intValue(), str2, justReturnMsg);
                            return Unit.INSTANCE;
                        }

                        public final void invoke(int i, String msg2, JustReturnMsg justReturnMsg) {
                            Intrinsics.checkNotNullParameter(msg2, "msg");
                            if (i == 200) {
                                shortVideoMainFragment.mCommentPage = 1;
                                shortVideoMainFragment.getCommentList();
                            }
                        }
                    });
                }
            });
        }
        showInputTextMsgDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void dismissInputDialog() {
        InputTextMsgDialog inputTextMsgDialog = this.inputTextMsgDialog;
        if (inputTextMsgDialog != null) {
            Intrinsics.checkNotNull(inputTextMsgDialog);
            if (inputTextMsgDialog.isShowing()) {
                InputTextMsgDialog inputTextMsgDialog2 = this.inputTextMsgDialog;
                Intrinsics.checkNotNull(inputTextMsgDialog2);
                inputTextMsgDialog2.dismiss();
            }
            InputTextMsgDialog inputTextMsgDialog3 = this.inputTextMsgDialog;
            Intrinsics.checkNotNull(inputTextMsgDialog3);
            inputTextMsgDialog3.cancel();
            this.inputTextMsgDialog = null;
        }
    }

    private final void showInputTextMsgDialog() {
        InputTextMsgDialog inputTextMsgDialog = this.inputTextMsgDialog;
        Intrinsics.checkNotNull(inputTextMsgDialog);
        inputTextMsgDialog.show();
    }

    private final int getWindowHeight() {
        Resources resources = getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "resources");
        return resources.getDisplayMetrics().heightPixels;
    }

    private final void initListener() {
        RecyclerViewUtil recyclerViewUtil = this.mRecyclerViewUtil;
        if (recyclerViewUtil != null) {
            recyclerViewUtil.initScrollListener(this.rv_dialog_lists);
        }
        this.mKeyBoardListener = new SoftKeyBoardListener(requireActivity(), new SoftKeyBoardListener.OnSoftKeyBoardChangeListener() { // from class: com.mogu.tv.ui.frag.ShortVideoMainFragment.initListener.1
            @Override // com.mogu.tv.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
            public void keyBoardShow(int height) {
            }

            @Override // com.mogu.tv.utils.SoftKeyBoardListener.OnSoftKeyBoardChangeListener
            public void keyBoardHide(int height) {
                ShortVideoMainFragment.this.dismissInputDialog();
            }
        });
    }
}
