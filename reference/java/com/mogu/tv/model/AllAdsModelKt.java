package com.mogu.tv.model;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: AllAdsModel.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0000\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\b\u0012\u0004\u0012\u00020\u00060\u0007¨\u0006\b"}, d2 = {"searchLeft", "", "target", "presum", "", "getRandomAd", "Lcom/mogu/tv/model/AllAdsModel$Item;", "", "app_mogushareRelease"}, k = 2, mv = {1, 7, 1}, xi = 48)
public final class AllAdsModelKt {
    public static final AllAdsModel.Item getRandomAd(List<AllAdsModel.Item> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (!(!list.isEmpty())) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        int size = list.size();
        int[] iArr = new int[size];
        iArr[0] = list.get(0).getWeight();
        int size2 = list.size();
        for (int i = 1; i < size2; i++) {
            if (list.get(0).getWeight() == 0) {
                list.get(0).setWeight(1);
            }
            iArr[i] = iArr[i - 1] + list.get(i).getWeight();
        }
        return list.get(searchLeft(RangesKt.random(new IntRange(1, iArr[size - 1]), Random.INSTANCE), iArr));
    }

    public static final int searchLeft(int i, int[] presum) {
        Intrinsics.checkNotNullParameter(presum, "presum");
        int length = presum.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = ((length - i2) / 2) + i2;
            if (presum[i3] >= i) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return i2;
    }
}
