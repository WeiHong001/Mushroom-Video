package com.mogu.tv.api;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.ObservableTransformer;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;

/* JADX INFO: loaded from: classes2.dex */
public class RxSchedulers {
    public static <T> ObservableTransformer<T, T> ioMain() {
        return new ObservableTransformer() { // from class: com.mogu.tv.api.RxSchedulers$$ExternalSyntheticLambda0
            @Override // io.reactivex.ObservableTransformer
            public final ObservableSource apply(Observable observable) {
                return observable.subscribeOn(Schedulers.io()).unsubscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread());
            }
        };
    }
}
