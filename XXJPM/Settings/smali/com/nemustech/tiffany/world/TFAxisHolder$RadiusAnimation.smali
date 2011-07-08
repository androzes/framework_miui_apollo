.class Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;
.super Lcom/nemustech/tiffany/world/TFAnimation;
.source "TFAxisHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFAxisHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RadiusAnimation"
.end annotation


# instance fields
.field protected mDestRadius:F

.field protected mHolder:Lcom/nemustech/tiffany/world/TFAxisHolder;

.field protected mSrcRadius:F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFAxisHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFAnimation;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFAxisHolder;

    .line 99
    iput v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mSrcRadius:F

    .line 100
    iput v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mDestRadius:F

    .line 101
    return-void
.end method


# virtual methods
.method public OnFrame()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFAxisHolder;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFAxisHolder;->setRadius(F)V

    .line 116
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFAxisHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->requestLayout()V

    .line 117
    return-void
.end method

.method public OnStart()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public OnStop()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->OnFrame()V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->getT()F

    move-result v0

    .line 125
    .local v0, t:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mSrcRadius:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mDestRadius:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public setDestRadius(F)V
    .locals 1
    .parameter "destRadius"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFAxisHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFAxisHolder;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mSrcRadius:F

    .line 121
    iput p1, p0, Lcom/nemustech/tiffany/world/TFAxisHolder$RadiusAnimation;->mDestRadius:F

    .line 122
    return-void
.end method
