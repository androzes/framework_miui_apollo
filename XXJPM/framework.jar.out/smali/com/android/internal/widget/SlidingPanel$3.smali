.class Lcom/android/internal/widget/SlidingPanel$3;
.super Ljava/lang/Object;
.source "SlidingPanel.java"

# interfaces
.implements Landroid/widget/SpectrumVisualizer$OnActiveStreamChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SlidingPanel;->setupMusicControl()V
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
    .line 295
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$3;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 2
    .parameter "musicActive"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/SlidingPanel$3;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v0}, Lcom/android/internal/widget/SlidingPanel;->access$900(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_0

    const v1, 0x10804bf

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    return-void

    .line 298
    :cond_0
    const v1, 0x10804c2

    goto :goto_0
.end method
