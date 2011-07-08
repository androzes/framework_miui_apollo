.class Landroid/media/MediaScanner$FileCacheEntry;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileCacheEntry"
.end annotation


# instance fields
.field mLastModified:J

.field mLastModifiedChanged:Z

.field mPath:Ljava/lang/String;

.field mRowId:J

.field mSeenInFileSystem:Z

.field mTableUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;JLjava/lang/String;J)V
    .locals 1
    .parameter "tableUri"
    .parameter "rowId"
    .parameter "path"
    .parameter "lastModified"

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    iput-object p1, p0, Landroid/media/MediaScanner$FileCacheEntry;->mTableUri:Landroid/net/Uri;

    .line 737
    iput-wide p2, p0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 738
    iput-object p4, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 739
    iput-wide p5, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 740
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 741
    iput-boolean v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 742
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    return-object v0
.end method
