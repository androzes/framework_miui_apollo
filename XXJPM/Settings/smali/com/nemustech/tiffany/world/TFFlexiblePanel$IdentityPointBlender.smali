.class public Lcom/nemustech/tiffany/world/TFFlexiblePanel$IdentityPointBlender;
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
    name = "IdentityPointBlender"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    return-void
.end method


# virtual methods
.method public calcXYZ(II[F)V
    .locals 3
    .parameter "s"
    .parameter "t"
    .parameter "xyz"

    .prologue
    const/high16 v2, 0x4100

    .line 313
    const/4 v0, 0x0

    int-to-float v1, p1

    div-float/2addr v1, v2

    aput v1, p3, v0

    .line 314
    const/4 v0, 0x1

    int-to-float v1, p2

    div-float/2addr v1, v2

    aput v1, p3, v0

    .line 315
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, p3, v0

    .line 316
    return-void
.end method

.method public isNextAvailable()Z
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public onFrame(I)Z
    .locals 1
    .parameter "tick"

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method
