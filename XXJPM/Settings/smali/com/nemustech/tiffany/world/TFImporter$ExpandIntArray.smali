.class public Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;
.super Ljava/lang/Object;
.source "TFImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandIntArray"
.end annotation


# static fields
.field public static final ITEM_PER_LINE:I = 0x400

.field public static final LINE_INCREASE:I = 0x100


# instance fields
.field public mCount:I

.field public mLines:[[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    .line 368
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->expandLines()V

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    .line 370
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 372
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->add(II)V

    .line 373
    return-void
.end method

.method public add(II)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 375
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 376
    iget p1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    .line 377
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    if-le p1, v2, :cond_2

    .line 378
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 380
    :cond_2
    div-int/lit16 v1, p1, 0x400

    .line 381
    .local v1, line:I
    rem-int/lit16 v0, p1, 0x400

    .line 382
    .local v0, indexInLine:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 383
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->expandLines()V

    .line 384
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    const/16 v3, 0x400

    new-array v3, v3, [I

    aput-object v3, v2, v1

    .line 386
    :cond_4
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    aget-object v2, v2, v1

    aput p2, v2, v0

    .line 387
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    .line 388
    return-void
.end method

.method protected expandLines()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    .line 408
    .local v1, old:[[I
    if-eqz v1, :cond_1

    array-length v2, v1

    move v0, v2

    .line 409
    .local v0, len:I
    :goto_0
    add-int/lit16 v2, v0, 0x100

    new-array v2, v2, [[I

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    .line 410
    if-eqz v1, :cond_0

    .line 411
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[I

    .line 413
    return-void

    .end local v0           #len:I
    :cond_1
    move v0, v3

    .line 408
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    return v0
.end method

.method public toArray()[I
    .locals 6

    .prologue
    .line 393
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    new-array v4, v5, [I

    .line 394
    .local v4, ret:[I
    const/4 v3, 0x0

    .line 395
    .local v3, line:I
    const/4 v1, 0x0

    .line 396
    .local v1, indexInLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mCount:I

    if-ge v0, v5, :cond_0

    .line 397
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandIntArray;->mLines:[[I

    aget-object v5, v5, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #indexInLine:I
    .local v2, indexInLine:I
    aget v5, v5, v1

    aput v5, v4, v0

    .line 398
    const/16 v5, 0x400

    if-lt v2, v5, :cond_1

    .line 399
    add-int/lit8 v3, v3, 0x1

    .line 400
    const/4 v1, 0x0

    .line 396
    .end local v2           #indexInLine:I
    .restart local v1       #indexInLine:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
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
