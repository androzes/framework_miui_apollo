.class Lcom/nemustech/tiffany/widget/TFGallery$2;
.super Ljava/lang/Object;
.source "TFGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFGallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
    .line 1228
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFGallery$2;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFGallery$2;->this$0:Lcom/nemustech/tiffany/widget/TFGallery;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFGallery;->access$300(Lcom/nemustech/tiffany/widget/TFGallery;)V

    .line 1230
    return-void
.end method
