.class Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable$1;
.super Ljava/lang/Object;
.source "TFPageLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->endFling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 910
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable$1;->this$1:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable$1;->this$1:Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;

    iget-object v0, v0, Lcom/nemustech/tiffany/widget/TFPageLayout$FlingRunnable;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$300(Lcom/nemustech/tiffany/widget/TFPageLayout;)V

    .line 912
    return-void
.end method
