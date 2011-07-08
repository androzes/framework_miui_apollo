.class Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;
.super Lcom/nemustech/tiffany/world/TFAnimation;
.source "TFCircularHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFCircularHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RadiusAnimation"
.end annotation


# instance fields
.field protected mDestRadius:F

.field protected mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

.field protected mSrcRadius:F


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCircularHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFAnimation;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    .line 123
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mSrcRadius:F

    .line 124
    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mDestRadius:F

    .line 125
    return-void
.end method


# virtual methods
.method public OnFrame()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->getRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/world/TFCircularHolder;->setRadius(F)V

    .line 139
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 140
    return-void
.end method

.method public OnStart()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public OnStop()Z
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->OnFrame()V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->getT()F

    move-result v0

    .line 148
    .local v0, t:F
    const/high16 v1, 0x3f80

    sub-float/2addr v1, v0

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mSrcRadius:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mDestRadius:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    return v1
.end method

.method public setDestRadius(F)V
    .locals 1
    .parameter "destRadius"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->getRadius()F

    move-result v0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mSrcRadius:F

    .line 144
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$RadiusAnimation;->mDestRadius:F

    .line 145
    return-void
.end method
