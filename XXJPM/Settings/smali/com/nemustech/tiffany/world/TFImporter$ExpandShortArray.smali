.class public Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;
.super Ljava/lang/Object;
.source "TFImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandShortArray"
.end annotation


# static fields
.field public static final ITEM_PER_LINE:I = 0x400

.field public static final LINE_INCREASE:I = 0x100


# instance fields
.field public mCount:I

.field public mLines:[[S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    const/4 v0, 0x0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    .line 424
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->expandLines()V

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    .line 426
    return-void
.end method


# virtual methods
.method public add(IS)V
    .locals 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 431
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 432
    iget p1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    .line 433
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    if-le p1, v2, :cond_2

    .line 434
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 436
    :cond_2
    div-int/lit16 v1, p1, 0x400

    .line 437
    .local v1, line:I
    rem-int/lit16 v0, p1, 0x400

    .line 438
    .local v0, indexInLine:I
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 439
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->expandLines()V

    .line 440
    :cond_3
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    aget-object v2, v2, v1

    if-nez v2, :cond_4

    .line 441
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    const/16 v3, 0x400

    new-array v3, v3, [S

    aput-object v3, v2, v1

    .line 442
    :cond_4
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    aget-object v2, v2, v1

    aput-short p2, v2, v0

    .line 443
    add-int/lit8 v2, p1, 0x1

    iput v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    .line 444
    return-void
.end method

.method public add(S)V
    .locals 1
    .parameter "value"

    .prologue
    .line 428
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->add(IS)V

    .line 429
    return-void
.end method

.method protected expandLines()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    .line 464
    .local v1, old:[[S
    if-eqz v1, :cond_1

    array-length v2, v1

    move v0, v2

    .line 465
    .local v0, len:I
    :goto_0
    add-int/lit16 v2, v0, 0x100

    new-array v2, v2, [[S

    iput-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    .line 466
    if-eqz v1, :cond_0

    .line 467
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    :cond_0
    const/4 v1, 0x0

    check-cast v1, [[S

    .line 469
    return-void

    .end local v0           #len:I
    :cond_1
    move v0, v3

    .line 464
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 446
    iget v0, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    return v0
.end method

.method public toArray()[S
    .locals 6

    .prologue
    .line 449
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    new-array v4, v5, [S

    .line 450
    .local v4, ret:[S
    const/4 v3, 0x0

    .line 451
    .local v3, line:I
    const/4 v1, 0x0

    .line 452
    .local v1, indexInLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mCount:I

    if-ge v0, v5, :cond_0

    .line 453
    iget-object v5, p0, Lcom/nemustech/tiffany/world/TFImporter$ExpandShortArray;->mLines:[[S

    aget-object v5, v5, v3

    add-int/lit8 v2, v1, 0x1

    .end local v1           #indexInLine:I
    .local v2, indexInLine:I
    aget-short v5, v5, v1

    aput-short v5, v4, v0

    .line 454
    const/16 v5, 0x400

    if-lt v2, v5, :cond_1

    .line 455
    add-int/lit8 v3, v3, 0x1

    .line 456
    const/4 v1, 0x0

    .line 452
    .end local v2           #indexInLine:I
    .restart local v1       #indexInLine:I
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
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
