.class public Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;
.super Ljava/lang/Object;
.source "TFImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandFloatArray"
.end annotation


# static fields
.field public static final ITEM_PER_LINE:I = 0x400

.field public static final LINE_INCREASE:I = 0x100


# instance fields
.field public mCount:I

.field public mLines:[[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, 0x0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    .line 312
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->expandLines()V

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    .line 314
    return-void
.end method


# virtual methods
.method public add(F)V
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->add(IF)V

    .line 317
    return-void
.end method

.method public add(IF)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 319
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 320
    iget p1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    .line 321
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    if-le p1, v2, :cond_2

    .line 322
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 324
    :cond_2
    div-int/lit16 v1, p1, 0x400

    .line 325
    .local v1, line:I
    rem-int/lit16 v0, p1, 0x400

    .line 326
    .local v0, indexInLine:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->expandLines()V

    .line 328
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 329
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    const/16 v3, 0x400

    new-array v3, v3, [F

    aput-object v3, v2, v1

    .line 330
    :cond_4
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    aget-object v2, v2, v1

    aput p2, v2, v0

    .line 331
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    .line 332
    return-void
.end method

.method protected expandLines()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 351
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    .line 352
    .local v1, old:[[F
    if-eqz v1, :cond_1

    array-length v2, v1

    move v0, v2

    .line 353
    .local v0, len:I
    :goto_0
    add-int/lit16 v2, v0, 0x100

    new-array v2, v2, [[F

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    .line 354
    if-eqz v1, :cond_0

    .line 355
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[F

    .line 357
    return-void

    .end local v0           #len:I
    :cond_1
    move v0, v3

    .line 352
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    return v0
.end method

.method public toArray()[F
    .locals 6

    .prologue
    .line 337
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    new-array v4, v5, [F

    .line 338
    .local v4, ret:[F
    const/4 v3, 0x0

    .line 339
    .local v3, line:I
    const/4 v1, 0x0

    .line 340
    .local v1, indexInLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mCount:I

    if-ge v0, v5, :cond_0

    .line 341
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandFloatArray;->mLines:[[F

    aget-object v5, v5, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #indexInLine:I
    .local v2, indexInLine:I
    aget v5, v5, v1

    aput v5, v4, v0

    .line 342
    const/16 v5, 0x400

    if-lt v2, v5, :cond_1

    .line 343
    add-int/lit8 v3, v3, 0x1

    .line 344
    const/4 v1, 0x0

    .line 340
    .end local v2           #indexInLine:I
    .restart local v1       #indexInLine:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 347
    :cond_0
    return-object v4

    .end local v1           #indexInLine:I
    .restart local v2       #indexInLine:I
    :cond_1
    move v1, v2

    .end local v2           #indexInLine:I
    .restart local v1       #indexInLine:I
    goto :goto_1
.end method
