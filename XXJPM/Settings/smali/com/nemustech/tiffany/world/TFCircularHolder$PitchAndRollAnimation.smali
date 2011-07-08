.class Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;
.super Lcom/nemustech/tiffany/world/TFAnimation;
.source "TFCircularHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFCircularHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PitchAndRollAnimation"
.end annotation


# instance fields
.field protected mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

.field protected mPeriod:I

.field protected mRepeat:Z


# direct methods
.method public constructor <init>(Lcom/nemustech/tiffany/world/TFCircularHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/nemustech/tiffany/world/TFAnimation;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mPeriod:I

    .line 180
    return-void
.end method


# virtual methods
.method public OnFrame()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mHolder:Lcom/nemustech/tiffany/world/TFCircularHolder;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFCircularHolder;->requestLayout()V

    .line 197
    return-void
.end method

.method public OnStart()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mRepeat:Z

    .line 185
    return v0
.end method

.method public OnStop()Z
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->OnFrame()V

    .line 190
    iget-boolean v0, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mRepeat:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->start()V

    .line 192
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getOffset(F)F
    .locals 5
    .parameter "modelPosition"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->getT()F

    move-result v1

    add-float/2addr v1, p1

    const/high16 v2, 0x4000

    mul-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L

    mul-double/2addr v1, v3

    double-to-float v0, v1

    .line 205
    .local v0, rad:F
    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public setPeriod(I)V
    .locals 0
    .parameter "periodInMSec"

    .prologue
    .line 200
    iput p1, p0, Lcom/nemustech/tiffany/world/TFCircularHolder$PitchAndRollAnimation;->mPeriod:I

    .line 201
    return-void
.end method
