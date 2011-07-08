.class Lcom/nemustech/tiffany/widget/TFPageLayout$3;
.super Ljava/lang/Object;
.source "TFPageLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFPageLayout;->fireTransitionStartNotification(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

.field final synthetic val$curIndex:I


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFPageLayout;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$3;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    iput p2, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$3;->val$curIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 807
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$3;->this$0:Lcom/nemustech/tiffany/widget/TFPageLayout;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFPageLayout;->access$000(Lcom/nemustech/tiffany/widget/TFPageLayout;)Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;

    move-result-object v0

    iget v1, p0, Lcom/nemustech/tiffany/widget/TFPageLayout$3;->val$curIndex:I

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFPageLayout$PageTransitionListener;->onTransitionStart(I)V

    .line 808
    return-void
.end method
