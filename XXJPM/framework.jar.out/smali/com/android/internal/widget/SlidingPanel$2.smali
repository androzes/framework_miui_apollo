.class Lcom/android/internal/widget/SlidingPanel$2;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, handler:I
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingPanel;->access$400(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v2}, Lcom/android/internal/widget/SlidingPanel;->access$500(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 251
    const/4 v0, 0x1

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1, v0}, Lcom/android/internal/widget/SlidingPanel;->access$700(Lcom/android/internal/widget/SlidingPanel;I)V

    .line 258
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1, v3}, Lcom/android/internal/widget/SlidingPanel;->access$800(Lcom/android/internal/widget/SlidingPanel;I)V

    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingPanel;->access$200(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 260
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingPanel;->access$300(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 261
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SlidingPanel;->enableVisualization(Z)V

    .line 262
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v1}, Lcom/android/internal/widget/SlidingPanel;->access$400(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SlidingPanel$2;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v2}, Lcom/android/internal/widget/SlidingPanel;->access$600(Lcom/android/internal/widget/SlidingPanel;)Lcom/android/internal/widget/SlidingPanel$Slider;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 253
    const/4 v0, 0x2

    goto :goto_0

    .line 255
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 266
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 270
    return-void
.end method
