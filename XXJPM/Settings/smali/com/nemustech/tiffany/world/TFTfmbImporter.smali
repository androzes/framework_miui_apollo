.class public Lcom/nemustech/tiffany/world/TFTfmbImporter;
.super Lcom/nemustech/tiffany/world/TFImporter;
.source "TFTfmbImporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFTfmbImporter"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFImporter;-><init>(Ljava/io/InputStream;)V

    .line 17
    return-void
.end method

.method private loadFloats(Ljava/io/DataInputStream;I)Ljava/nio/FloatBuffer;
    .locals 3
    .parameter "r"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p2}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 21
    .local v0, buf:Ljava/nio/FloatBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 24
    return-object v0
.end method


# virtual methods
.method public drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, i:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    array-length v1, v2

    .line 70
    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 71
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    aget-short v3, v3, v0

    const/16 v4, 0x1403

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 72
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    aget-short v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public importStream(Ljava/io/InputStream;)I
    .locals 12
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const-string v11, "TFTfmbImporter"

    .line 29
    const-string v7, "TFTfmbImporter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "START:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v5, Ljava/io/DataInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, p1, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v5, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 31
    .local v5, r:Ljava/io/DataInputStream;
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->initialize()V

    .line 34
    new-array v2, v10, [B

    .line 35
    .local v2, header:[B
    invoke-virtual {v5, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 37
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 38
    .local v6, vCount:I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 39
    .local v0, fCount:I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 40
    .local v1, fSize:I
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 41
    .local v4, info:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x6

    if-ge v3, v7, :cond_0

    .line 42
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mBoundBox:[F

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readFloat()F

    move-result v8

    aput v8, v7, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    mul-int/lit8 v7, v6, 0x3

    invoke-direct {p0, v5, v7}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->loadFloats(Ljava/io/DataInputStream;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 48
    and-int/lit8 v7, v4, 0x1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 49
    mul-int/lit8 v7, v6, 0x4

    invoke-direct {p0, v5, v7}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->loadFloats(Ljava/io/DataInputStream;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 50
    :cond_1
    and-int/lit8 v7, v4, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 51
    mul-int/lit8 v7, v6, 0x3

    invoke-direct {p0, v5, v7}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->loadFloats(Ljava/io/DataInputStream;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 52
    :cond_2
    and-int/lit8 v7, v4, 0x4

    if-ne v7, v10, :cond_3

    .line 53
    mul-int/lit8 v7, v6, 0x2

    invoke-direct {p0, v5, v7}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->loadFloats(Ljava/io/DataInputStream;I)Ljava/nio/FloatBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 55
    :cond_3
    new-array v7, v1, [S

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    .line 56
    iput v0, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexCount:I

    .line 57
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 58
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    aput-short v8, v7, v3

    .line 57
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 59
    :cond_4
    invoke-virtual {p0, v1}, Lcom/nemustech/tiffany/world/TFTfmbImporter;->newShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 60
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    iget-object v8, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexArray:[S

    invoke-virtual {v7, v8}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 61
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFTfmbImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    const-string v7, "TFTfmbImporter"

    const-string v7, "END"

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return v9
.end method
