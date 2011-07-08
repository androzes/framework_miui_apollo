.class Lcom/nemustech/tiffany/widget/TFGallery$1;
.super Ljava/lang/Object;
.source "TFGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFGallery;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFGallery$1;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$1;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFGallery;->access$002(Lcom/nemustech/tiffany/widget/TFGallery;Z)Z

    .line 142
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$1;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFGallery;->selectionChanged()V

    .line 143
    return-void
.end method
