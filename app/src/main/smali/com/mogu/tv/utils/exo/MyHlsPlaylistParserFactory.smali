.class public final Lcom/mogu/tv/utils/exo/MyHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "MyHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylistParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/mogu/tv/utils/exo/HlsMyPlaylistParser;

    invoke-direct {v0}, Lcom/mogu/tv/utils/exo/HlsMyPlaylistParser;-><init>()V

    return-object v0
.end method

.method public createPlaylistParser(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            ")",
            "Lcom/google/android/exoplayer2/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplayer2/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/mogu/tv/utils/exo/HlsMyPlaylistParser;

    invoke-direct {v0, p1, p2}, Lcom/mogu/tv/utils/exo/HlsMyPlaylistParser;-><init>(Lcom/google/android/exoplayer2/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)V

    return-object v0
.end method
