.class public Lcom/nemustech/tiffany/world/TFEffect$TwistParam;
.super Ljava/lang/Object;
.source "TFEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TwistParam"
.end annotation


# instance fields
.field public final mDuration:I

.field public final mTargetDegree:F

.field public final mTwistDuration:I

.field public final mTwistInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIFLandroid/view/animation/Interpolator;)V
    .locals 0
    .parameter "duration"
    .parameter "twistDuration"
    .parameter "targetDegree"
    .parameter "twistInterpolator"

    .prologue
    .line 2495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2496
    iput p1, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mDuration:I

    .line 2497
    iput p2, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTwistDuration:I

    .line 2498
    iput p3, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTargetDegree:F

    .line 2499
    iput-object p4, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    .line 2502
    return-void
.end method


# virtual methods
.method public setParam(Lcom/nemustech/tiffany/world/TFTwistEffect;)V
    .locals 2
    .parameter "twist"

    .prologue
    .line 2504
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mDuration:I

    iget v1, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTwistDuration:I

    invoke-virtual {p1, v0, v1}, Lcom/nemustech/tiffany/world/TFTwistEffect;->setDuration(II)V

    .line 2505
    iget v0, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTargetDegree:F

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFTwistEffect;->setTargetDegree(F)V

    .line 2506
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFEffect$TwistParam;->mTwistInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Lcom/nemustech/tiffany/world/TFTwistEffect;->setTwistInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2507
    return-void
.end method
