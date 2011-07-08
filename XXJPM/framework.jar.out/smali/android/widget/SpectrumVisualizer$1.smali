.class Landroid/widget/SpectrumVisualizer$1;
.super Ljava/lang/Object;
.source "SpectrumVisualizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpectrumVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SpectrumVisualizer;


# direct methods
.method constructor <init>(Landroid/widget/SpectrumVisualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Landroid/widget/SpectrumVisualizer$1;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/widget/SpectrumVisualizer$1;->this$0:Landroid/widget/SpectrumVisualizer;

    invoke-static {v0}, Landroid/widget/SpectrumVisualizer;->access$000(Landroid/widget/SpectrumVisualizer;)V

    .line 53
    return-void
.end method
