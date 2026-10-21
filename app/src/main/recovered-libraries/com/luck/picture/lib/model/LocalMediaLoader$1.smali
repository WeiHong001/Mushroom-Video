.class Lcom/luck/picture/lib/model/LocalMediaLoader$1;
.super Ljava/lang/Object;
.source "LocalMediaLoader.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/model/LocalMediaLoader;->loadAllMedia(Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

.field final synthetic val$imageLoadListener:Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;


# direct methods
.method constructor <init>(Lcom/luck/picture/lib/model/LocalMediaLoader;Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    iput-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->val$imageLoadListener:Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    .line 135
    :cond_0
    iget-object v1, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    const-wide/16 v6, 0x1f4

    invoke-static {v1, v2, v3, v6, v7}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$000(Lcom/luck/picture/lib/model/LocalMediaLoader;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-static {v5}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$700(I)[Ljava/lang/String;

    move-result-object v11

    .line 137
    new-instance v1, Landroidx/loader/content/CursorLoader;

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 138
    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$400()Landroid/net/Uri;

    move-result-object v8

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v9

    const-string v12, "_id DESC"

    move-object v6, v1

    invoke-direct/range {v6 .. v12}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 128
    :cond_1
    iget-object v1, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {v1, v2, v3, v2, v3}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$000(Lcom/luck/picture/lib/model/LocalMediaLoader;JJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-static {v4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$700(I)[Ljava/lang/String;

    move-result-object v10

    .line 130
    new-instance v1, Landroidx/loader/content/CursorLoader;

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 131
    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$400()Landroid/net/Uri;

    move-result-object v7

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v8

    const-string v11, "_id DESC"

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 120
    :cond_2
    invoke-static {v4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$700(I)[Ljava/lang/String;

    move-result-object v17

    .line 121
    new-instance v1, Landroidx/loader/content/CursorLoader;

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 122
    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v13

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$400()Landroid/net/Uri;

    move-result-object v14

    .line 123
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v15

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$100(Lcom/luck/picture/lib/model/LocalMediaLoader;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "media_type=? AND _size>0"

    goto :goto_0

    :cond_3
    const-string v2, "media_type=? AND _size>0 AND mime_type!=\'image/gif\'"

    :goto_0
    move-object/from16 v16, v2

    const-string v18, "_id DESC"

    move-object v12, v1

    invoke-direct/range {v12 .. v18}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_4
    iget-object v1, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {v1, v2, v3, v2, v3}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$000(Lcom/luck/picture/lib/model/LocalMediaLoader;JJ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$100(Lcom/luck/picture/lib/model/LocalMediaLoader;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$200(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 113
    new-instance v1, Landroidx/loader/content/CursorLoader;

    iget-object v2, v0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 114
    invoke-static {v2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$400()Landroid/net/Uri;

    move-result-object v5

    .line 115
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$600()[Ljava/lang/String;

    move-result-object v8

    const-string v9, "_id DESC"

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 148
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    new-instance v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    invoke-direct {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;-><init>()V

    .line 150
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    .line 152
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 154
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    :cond_0
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 163
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 166
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v4, v4, v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 169
    invoke-static {}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$500()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 171
    new-instance v12, Lcom/luck/picture/lib/entity/LocalMedia;

    int-to-long v6, v4

    iget-object v4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 172
    invoke-static {v4}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$900(Lcom/luck/picture/lib/model/LocalMediaLoader;)I

    move-result v8

    move-object v4, v12

    move-object v5, v2

    invoke-direct/range {v4 .. v11}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>(Ljava/lang/String;JILjava/lang/String;II)V

    .line 174
    iget-object v4, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {v4, v2, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$1000(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v2

    .line 175
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImages()Ljava/util/List;

    move-result-object v4

    .line 176
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 178
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->getImageNum()I

    move-result v2

    add-int/2addr v2, v3

    .line 180
    invoke-virtual {v0, v2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImageNum(I)V

    .line 181
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 184
    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {p2, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$1100(Lcom/luck/picture/lib/model/LocalMediaLoader;Ljava/util/List;)V

    const/4 p2, 0x0

    .line 185
    invoke-interface {p1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 187
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {p2}, Lcom/luck/picture/lib/entity/LocalMedia;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setFirstImagePath(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    invoke-static {p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$900(Lcom/luck/picture/lib/model/LocalMediaLoader;)I

    move-result p2

    invoke-static {}, Lcom/luck/picture/lib/config/PictureMimeType;->ofAudio()I

    move-result v2

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 189
    invoke-static {p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v2, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->this$0:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 190
    invoke-static {p2}, Lcom/luck/picture/lib/model/LocalMediaLoader;->access$300(Lcom/luck/picture/lib/model/LocalMediaLoader;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    sget v2, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    invoke-virtual {p2, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 191
    :goto_0
    invoke-virtual {v0, p2}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setName(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->setImages(Ljava/util/List;)V

    .line 194
    :cond_2
    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->val$imageLoadListener:Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;

    invoke-interface {p2, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;->loadComplete(Ljava/util/List;)V

    goto :goto_1

    .line 197
    :cond_3
    iget-object p2, p0, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->val$imageLoadListener:Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;

    invoke-interface {p2, p1}, Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;->loadComplete(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/model/LocalMediaLoader$1;->onLoadFinished(Landroidx/loader/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
