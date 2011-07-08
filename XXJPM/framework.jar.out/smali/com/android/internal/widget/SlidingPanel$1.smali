.class Lcom/android/internal/widget/SlidingPanel$1;
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
    .line 234
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$1;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$1;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$200(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$1;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$300(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$1;->this$0:Lcom/android/internal/widget/SlidingPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingPanel;->enableVisualization(Z)V

    .line 243
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 237
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 235
    return-void
.end method
