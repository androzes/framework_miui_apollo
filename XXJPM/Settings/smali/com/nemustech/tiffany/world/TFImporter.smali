.class public abstract Lcom/nemustech/tiffany/world/TFImporter;
.super Ljava/lang/Object;
.source "TFImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;,
        Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;,
        Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;,
        Lcom/nemustech/tiffany/world/TFImporter$LineSplit;
    }
.end annotation


# static fields
.field public static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "TFImporter"


# instance fields
.field public mBoundBox:[F

.field public mColorBuffer:Ljava/nio/FloatBuffer;

.field public mIndexArray:[S

.field public mIndexBuffer:Ljava/nio/ShortBuffer;

.field public mIndexCount:I

.field public mNormalBuffer:Ljava/nio/FloatBuffer;

.field public mTextureBuffer:Ljava/nio/FloatBuffer;

.field public mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    .line 17
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter;->initialize()V

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/nemustech/tiffany/world/TFImporter;->importStream(Ljava/io/InputStream;)I

    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public canDraw()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract importStream(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public initialize()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x7f80

    const/high16 v2, -0x80

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 27
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 28
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 29
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 30
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 31
    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mIndexArray:[S

    .line 32
    iput v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mIndexCount:I

    .line 33
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aput v3, v0, v1

    .line 34
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 35
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 36
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x3

    aput v2, v0, v1

    .line 37
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 38
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 39
    return-void
.end method

.method protected newBufferedReader(Ljava/io/InputStream;)Ljava/io/BufferedReader;
    .locals 3
    .parameter "is"

    .prologue
    .line 480
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected newFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 483
    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newShortBuffer(I)Ljava/nio/ShortBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 488
    mul-int/lit8 v0, p1, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public updateBoundBox(FFF)V
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    move v1, p1

    :goto_0
    aput v1, v0, v2

    .line 63
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v3

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    move v1, p1

    :goto_1
    aput v1, v0, v3

    .line 64
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v4

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    move v1, p2

    :goto_2
    aput v1, v0, v4

    .line 65
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v5

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    move v1, p2

    :goto_3
    aput v1, v0, v5

    .line 66
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v6

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    move v1, p3

    :goto_4
    aput v1, v0, v6

    .line 67
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    cmpl-float v2, p3, v2

    if-lez v2, :cond_5

    move v2, p3

    :goto_5
    aput v2, v0, v1

    .line 68
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v2

    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v3

    goto :goto_1

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v4

    goto :goto_2

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v5

    goto :goto_3

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    aget v1, v1, v6

    goto :goto_4

    .line 67
    :cond_5
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter;->mBoundBox:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    goto :goto_5
.end method
