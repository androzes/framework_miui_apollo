.class public Lcom/nemustech/tiffany/world/TFTfmImporter;
.super Lcom/nemustech/tiffany/world/TFImporter;
.source "TFTfmImporter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TFTfmImporter"


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
    .line 14
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/world/TFImporter;-><init>(Ljava/io/InputStream;)V

    .line 15
    return-void
.end method


# virtual methods
.method public drawModel(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .parameter "gl"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, i:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    array-length v1, v2

    .line 124
    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 125
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    aget-short v3, v3, v0

    const/16 v4, 0x1403

    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 126
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    aget-short v2, v2, v0

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method public importStream(Ljava/io/InputStream;)I
    .locals 21
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 19
    const-string v18, "TFTfmImporter"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "START:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v13, Ljava/io/BufferedInputStream;

    const/16 v18, 0x1000

    move-object v0, v13

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 21
    .local v13, r:Ljava/io/BufferedInputStream;
    new-instance v8, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;

    invoke-direct {v8, v13}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;-><init>(Ljava/io/InputStream;)V

    .line 22
    .local v8, l:Lcom/nemustech/tiffany/world/TFImporter$LineSplit;
    invoke-virtual/range {p0 .. p0}, Lcom/nemustech/tiffany/world/TFTfmImporter;->initialize()V

    .line 23
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 33
    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "TFM"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 34
    new-instance v18, Ljava/io/IOException;

    const-string v19, "not .tfm file"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 35
    :cond_0
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 37
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->eof()Z

    move-result v18

    if-nez v18, :cond_1

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenCount()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 38
    :cond_1
    new-instance v18, Ljava/io/IOException;

    const-string v19, "invalid count"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 39
    :cond_2
    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenInt(I)I

    move-result v17

    .line 40
    .local v17, vCount:I
    const/16 v18, 0x1

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenInt(I)I

    move-result v4

    .line 41
    .local v4, fCount:I
    const/16 v18, 0x2

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenInt(I)I

    move-result v5

    .line 42
    .local v5, fSize:I
    const/4 v14, 0x0

    .line 43
    .local v14, useColor:Z
    const/4 v15, 0x0

    .line 44
    .local v15, useNormal:Z
    const/16 v16, 0x0

    .line 45
    .local v16, useTexCoord:Z
    const/4 v6, 0x3

    .local v6, i:I
    :goto_0
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenCount()I

    move-result v18

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 46
    invoke-virtual {v8, v6}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "C"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 47
    const/4 v14, 0x1

    .line 45
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v8, v6}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "N"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 49
    const/4 v15, 0x1

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v8, v6}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "T"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 51
    const/16 v16, 0x1

    goto :goto_1

    .line 53
    :cond_5
    new-instance v18, Ljava/io/IOException;

    const-string v19, "invalid type"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 55
    :cond_6
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 57
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->eof()Z

    move-result v18

    if-nez v18, :cond_7

    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenCount()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 58
    :cond_7
    new-instance v18, Ljava/io/IOException;

    const-string v19, "invalid BoundBox"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 59
    :cond_8
    const/4 v6, 0x0

    :goto_2
    const/16 v18, 0x6

    move v0, v6

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mBoundBox:[F

    move-object/from16 v18, v0

    invoke-virtual {v8, v6}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    aput v19, v18, v6

    .line 59
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 63
    :cond_9
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 65
    mul-int/lit8 v18, v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTfmImporter;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 66
    if-eqz v14, :cond_a

    .line 67
    mul-int/lit8 v18, v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTfmImporter;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 68
    :cond_a
    if-eqz v15, :cond_b

    .line 69
    mul-int/lit8 v18, v17, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTfmImporter;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    .line 70
    :cond_b
    if-eqz v16, :cond_c

    .line 71
    mul-int/lit8 v18, v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTfmImporter;->newFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 72
    :cond_c
    const/4 v6, 0x0

    :goto_3
    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 73
    const/4 v9, 0x0

    .line 74
    .local v9, p:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .local v10, p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .restart local v10       #p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    if-eqz v14, :cond_d

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .restart local v10       #p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .restart local v10       #p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 83
    :cond_d
    if-eqz v15, :cond_e

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .restart local v10       #p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    move v10, v9

    .line 88
    .end local v9           #p:I
    .restart local v10       #p:I
    :cond_e
    if-eqz v16, :cond_f

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v9, v10, 0x1

    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8, v10}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    .end local v9           #p:I
    .restart local v10       #p:I
    invoke-virtual {v8, v9}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenFloat(I)F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    :cond_f
    move v9, v10

    .line 92
    .end local v10           #p:I
    .restart local v9       #p:I
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 72
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 94
    .end local v9           #p:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    if-eqz v14, :cond_11

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mColorBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 97
    :cond_11
    if-eqz v15, :cond_12

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mNormalBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    :cond_12
    if-eqz v16, :cond_13

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    :cond_13
    move v0, v5

    new-array v0, v0, [S

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    .line 103
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexCount:I

    .line 104
    const/4 v11, 0x0

    .line 105
    .local v11, pos:I
    const/4 v6, 0x0

    move v12, v11

    .end local v11           #pos:I
    .local v12, pos:I
    :goto_4
    if-ge v6, v4, :cond_15

    .line 106
    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenInt(I)I

    move-result v3

    .line 107
    .local v3, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    move-object/from16 v18, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #pos:I
    .restart local v11       #pos:I
    move v0, v3

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v12

    .line 108
    const/4 v7, 0x0

    .local v7, j:I
    move v12, v11

    .end local v11           #pos:I
    .restart local v12       #pos:I
    :goto_5
    if-ge v7, v3, :cond_14

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    move-object/from16 v18, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #pos:I
    .restart local v11       #pos:I
    add-int/lit8 v19, v7, 0x1

    move-object v0, v8

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->getTokenInt(I)I

    move-result v19

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v12

    .line 108
    add-int/lit8 v7, v7, 0x1

    move v12, v11

    .end local v11           #pos:I
    .restart local v12       #pos:I
    goto :goto_5

    .line 110
    :cond_14
    invoke-virtual {v8}, Lcom/nemustech/tiffany/world/TFImporter$LineSplit;->nextLine()V

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 112
    .end local v3           #count:I
    .end local v7           #j:I
    :cond_15
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFTfmImporter;->newShortBuffer(I)Ljava/nio/ShortBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexArray:[S

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nemustech/tiffany/world/TFTfmImporter;->mIndexBuffer:Ljava/nio/ShortBuffer;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    const-string v18, "TFTfmImporter"

    const-string v19, "END"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v18, 0x0

    return v18
.end method
