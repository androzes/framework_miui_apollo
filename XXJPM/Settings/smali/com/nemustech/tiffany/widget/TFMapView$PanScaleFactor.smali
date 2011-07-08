.class public Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;
.super Ljava/lang/Object;
.source "TFMapView.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFMapView$MapViewScaleFactor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanScaleFactor"
.end annotation


# instance fields
.field private mDistance:F

.field private mMaxDistance:F

.field private mMaxScale:F

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFMapView;


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/widget/TFMapView;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 642
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->this$0:Lcom/nemustech/tiffany/widget/TFMapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxDistance:F

    .line 645
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxScale:F

    .line 646
    iput v1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mDistance:F

    return-void
.end method


# virtual methods
.method public getScaleFactor(F)F
    .locals 4
    .parameter "progress"

    .prologue
    const/high16 v3, 0x3f80

    .line 693
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    move v0, v3

    .line 695
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxScale:F

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mDistance:F

    iget v2, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxDistance:F

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    sub-float v1, p1, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public setDistanceBetweenPoints(F)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 679
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mDistance:F

    .line 680
    return-void
.end method

.method public setMaxDistance(F)V
    .locals 0
    .parameter "maxDistance"

    .prologue
    .line 667
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxDistance:F

    .line 668
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .parameter "maxScale"

    .prologue
    .line 655
    iput p1, p0, Lcom/nemustech/tiffany/widget/TFMapView$PanScaleFactor;->mMaxScale:F

    .line 656
    return-void
.end method
