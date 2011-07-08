.class Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;
.super Landroid/view/animation/Animation;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingPanelAnimation"
.end annotation


# instance fields
.field private mDeltaY:I

.field private mInitBottom:I

.field private mMode:I

.field private mPanel:Lcom/android/internal/widget/SlidingPanel;

.field final synthetic this$0:Lcom/android/internal/widget/SlidingPanel;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/SlidingPanel;Lcom/android/internal/widget/SlidingPanel;I)V
    .locals 1
    .parameter
    .parameter "panel"
    .parameter "mode"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 172
    iput-object p2, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/android/internal/widget/SlidingPanel;

    .line 173
    iput p3, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mMode:I

    .line 174
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mPanel:Lcom/android/internal/widget/SlidingPanel;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    iget v3, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SlidingPanel;->scrollTo(II)V

    .line 195
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/view/animation/Animation;->reset()V

    .line 179
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$000(Lcom/android/internal/widget/SlidingPanel;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    .line 180
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mMode:I

    if-nez v0, :cond_1

    .line 181
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$100(Lcom/android/internal/widget/SlidingPanel;)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mInitBottom:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    goto :goto_0

    .line 184
    :cond_2
    iget v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$100(Lcom/android/internal/widget/SlidingPanel;)I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/widget/SlidingPanel$SlidingPanelAnimation;->mDeltaY:I

    goto :goto_0
.end method
