package com.mogu.tv.model;

import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TopicLists.kt */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\u0010B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/mogu/tv/model/TopicLists;", "", "code", "", "list", "", "Lcom/mogu/tv/model/TopicLists$Topic;", NotificationCompat.CATEGORY_MESSAGE, "", "(ILjava/util/List;Ljava/lang/String;)V", "getCode", "()I", "getList", "()Ljava/util/List;", "getMsg", "()Ljava/lang/String;", "Topic", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class TopicLists {
    private final int code;
    private final List<Topic> list;
    private final String msg;

    public TopicLists(int i, List<Topic> list, String msg) {
        Intrinsics.checkNotNullParameter(list, "list");
        Intrinsics.checkNotNullParameter(msg, "msg");
        this.code = i;
        this.list = list;
        this.msg = msg;
    }

    public final int getCode() {
        return this.code;
    }

    public final List<Topic> getList() {
        return this.list;
    }

    public final String getMsg() {
        return this.msg;
    }

    /* JADX INFO: compiled from: TopicLists.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b#\u0018\u00002\u00020\u0001B\u0095\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\b\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0006\u0010\u0013\u001a\u00020\b\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\u0003¢\u0006\u0002\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0018R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0018R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001dR\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0018R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0018R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0018R\u0011\u0010\r\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0011\u0010\u000e\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0011\u0010\u000f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u0018R\u0011\u0010\u0010\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001dR\u0011\u0010\u0011\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001dR\u0011\u0010\u0013\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001dR\u0011\u0010\u0014\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001dR\u0011\u0010\u0015\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0018¨\u0006+"}, d2 = {"Lcom/mogu/tv/model/TopicLists$Topic;", "", "topic_blurb", "", "topic_color", "topic_content", "topic_des", "topic_hits", "", "topic_id", "topic_key", "topic_letter", "topic_name", "topic_pic", "topic_remarks", "topic_score", "topic_score_all", "topic_score_num", "topic_rel_vod", "topic_status", "topic_time", "topic_title", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V", "getTopic_blurb", "()Ljava/lang/String;", "getTopic_color", "getTopic_content", "getTopic_des", "getTopic_hits", "()I", "getTopic_id", "getTopic_key", "getTopic_letter", "getTopic_name", "getTopic_pic", "getTopic_rel_vod", "getTopic_remarks", "getTopic_score", "getTopic_score_all", "getTopic_score_num", "getTopic_status", "getTopic_time", "getTopic_title", "app_mogushareRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Topic {
        private final String topic_blurb;
        private final String topic_color;
        private final String topic_content;
        private final String topic_des;
        private final int topic_hits;
        private final int topic_id;
        private final String topic_key;
        private final String topic_letter;
        private final String topic_name;
        private final String topic_pic;
        private final String topic_rel_vod;
        private final String topic_remarks;
        private final String topic_score;
        private final int topic_score_all;
        private final int topic_score_num;
        private final int topic_status;
        private final int topic_time;
        private final String topic_title;

        public Topic(String topic_blurb, String topic_color, String topic_content, String topic_des, int i, int i2, String topic_key, String topic_letter, String topic_name, String topic_pic, String topic_remarks, String topic_score, int i3, int i4, String topic_rel_vod, int i5, int i6, String topic_title) {
            Intrinsics.checkNotNullParameter(topic_blurb, "topic_blurb");
            Intrinsics.checkNotNullParameter(topic_color, "topic_color");
            Intrinsics.checkNotNullParameter(topic_content, "topic_content");
            Intrinsics.checkNotNullParameter(topic_des, "topic_des");
            Intrinsics.checkNotNullParameter(topic_key, "topic_key");
            Intrinsics.checkNotNullParameter(topic_letter, "topic_letter");
            Intrinsics.checkNotNullParameter(topic_name, "topic_name");
            Intrinsics.checkNotNullParameter(topic_pic, "topic_pic");
            Intrinsics.checkNotNullParameter(topic_remarks, "topic_remarks");
            Intrinsics.checkNotNullParameter(topic_score, "topic_score");
            Intrinsics.checkNotNullParameter(topic_rel_vod, "topic_rel_vod");
            Intrinsics.checkNotNullParameter(topic_title, "topic_title");
            this.topic_blurb = topic_blurb;
            this.topic_color = topic_color;
            this.topic_content = topic_content;
            this.topic_des = topic_des;
            this.topic_hits = i;
            this.topic_id = i2;
            this.topic_key = topic_key;
            this.topic_letter = topic_letter;
            this.topic_name = topic_name;
            this.topic_pic = topic_pic;
            this.topic_remarks = topic_remarks;
            this.topic_score = topic_score;
            this.topic_score_all = i3;
            this.topic_score_num = i4;
            this.topic_rel_vod = topic_rel_vod;
            this.topic_status = i5;
            this.topic_time = i6;
            this.topic_title = topic_title;
        }

        public final String getTopic_blurb() {
            return this.topic_blurb;
        }

        public final String getTopic_color() {
            return this.topic_color;
        }

        public final String getTopic_content() {
            return this.topic_content;
        }

        public final String getTopic_des() {
            return this.topic_des;
        }

        public final int getTopic_hits() {
            return this.topic_hits;
        }

        public final int getTopic_id() {
            return this.topic_id;
        }

        public final String getTopic_key() {
            return this.topic_key;
        }

        public final String getTopic_letter() {
            return this.topic_letter;
        }

        public final String getTopic_name() {
            return this.topic_name;
        }

        public final String getTopic_pic() {
            return this.topic_pic;
        }

        public final String getTopic_remarks() {
            return this.topic_remarks;
        }

        public final String getTopic_score() {
            return this.topic_score;
        }

        public final int getTopic_score_all() {
            return this.topic_score_all;
        }

        public final int getTopic_score_num() {
            return this.topic_score_num;
        }

        public final String getTopic_rel_vod() {
            return this.topic_rel_vod;
        }

        public final int getTopic_status() {
            return this.topic_status;
        }

        public final int getTopic_time() {
            return this.topic_time;
        }

        public final String getTopic_title() {
            return this.topic_title;
        }
    }
}
