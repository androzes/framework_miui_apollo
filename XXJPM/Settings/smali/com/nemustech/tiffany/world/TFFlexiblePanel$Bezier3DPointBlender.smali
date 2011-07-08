.class public Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;
.super Ljava/lang/Object;
.source "TFFlexiblePanel.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFFlexiblePanel$PointBlender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFFlexiblePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bezier3DPointBlender"
.end annotation


# static fields
.field private static final mBernstein3D:[[F


# instance fields
.field public mPoints:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->initBernstein3D()[[F

    move-result-object v0

    sput-object v0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mBernstein3D:[[F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mPoints:[F

    .line 338
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mPoints:[F

    invoke-static {v0}, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->setIdentityPoints([F)V

    .line 339
    return-void
.end method

.method private static final initBernstein3D()[[F
    .locals 8

    .prologue
    const/high16 v7, 0x4040

    const/high16 v6, 0x3f80

    .line 388
    const/4 v3, 0x4

    const/16 v4, 0x9

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 389
    .local v2, table:[[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x8

    if-gt v0, v3, :cond_0

    .line 390
    int-to-float v3, v0

    const/high16 v4, 0x4100

    div-float v1, v3, v4

    .line 391
    .local v1, t:F
    const/4 v3, 0x0

    aget-object v3, v2, v3

    sub-float v4, v6, v1

    sub-float v5, v6, v1

    mul-float/2addr v4, v5

    sub-float v5, v6, v1

    mul-float/2addr v4, v5

    aput v4, v3, v0

    .line 392
    const/4 v3, 0x1

    aget-object v3, v2, v3

    sub-float v4, v6, v1

    mul-float/2addr v4, v7

    sub-float v5, v6, v1

    mul-float/2addr v4, v5

    mul-float/2addr v4, v1

    aput v4, v3, v0

    .line 393
    const/4 v3, 0x2

    aget-object v3, v2, v3

    sub-float v4, v6, v1

    mul-float/2addr v4, v7

    mul-float/2addr v4, v1

    mul-float/2addr v4, v1

    aput v4, v3, v0

    .line 394
    const/4 v3, 0x3

    aget-object v3, v2, v3

    mul-float v4, v1, v1

    mul-float/2addr v4, v1

    aput v4, v3, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1           #t:F
    :cond_0
    return-object v2
.end method

.method public static setIdentityPoints([F)V
    .locals 6
    .parameter "points"

    .prologue
    const/4 v5, 0x4

    const/high16 v4, 0x4040

    .line 379
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 380
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_0

    .line 381
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x0

    int-to-float v3, v0

    div-float/2addr v3, v4

    aput v3, p0, v2

    .line 382
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v1

    div-float/2addr v3, v4

    aput v3, p0, v2

    .line 383
    mul-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    aput v3, p0, v2

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v0           #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method public calcXYZ(II[F)V
    .locals 10
    .parameter "s"
    .parameter "t"
    .parameter "xyz"

    .prologue
    const/4 v9, 0x4

    .line 343
    const/4 v4, 0x0

    .line 344
    .local v4, x:F
    const/4 v5, 0x0

    .line 345
    .local v5, y:F
    const/4 v6, 0x0

    .line 346
    .local v6, z:F
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v9, :cond_1

    .line 347
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v9, :cond_0

    .line 348
    sget-object v7, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mBernstein3D:[[F

    aget-object v7, v7, v2

    aget v7, v7, p2

    sget-object v8, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mBernstein3D:[[F

    aget-object v8, v8, v0

    aget v8, v8, p1

    mul-float v3, v7, v8

    .line 353
    .local v3, m:F
    mul-int/lit8 v7, v2, 0x4

    add-int/2addr v7, v0

    mul-int/lit8 v1, v7, 0x3

    .line 354
    .local v1, index:I
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mPoints:[F

    add-int/lit8 v8, v1, 0x0

    aget v7, v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    .line 355
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mPoints:[F

    add-int/lit8 v8, v1, 0x1

    aget v7, v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v5, v7

    .line 356
    iget-object v7, p0, Lcom/nemustech/tiffany/world/TFFlexiblePanel$Bezier3DPointBlender;->mPoints:[F

    add-int/lit8 v8, v1, 0x2

    aget v7, v7, v8

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 346
    .end local v1           #index:I
    .end local v3           #m:F
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    .end local v0           #i:I
    :cond_1
    const/4 v7, 0x0

    aput v4, p3, v7

    .line 360
    const/4 v7, 0x1

    aput v5, p3, v7

    .line 361
    const/4 v7, 0x2

    aput v6, p3, v7

    .line 362
    return-void
.end method

.method public isNextAvailable()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public onFrame(I)Z
    .locals 1
    .parameter "tick"

    .prologue
    .line 368
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 365
    return-void
.end method
