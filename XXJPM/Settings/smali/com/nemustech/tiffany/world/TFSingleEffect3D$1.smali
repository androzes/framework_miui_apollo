.class Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;
.super Ljava/lang/Object;
.source "TFSingleEffect3D.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFWorld$OnEffectFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFSingleEffect3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFSingleEffect3D;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFSingleEffect3D;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;->this$0:Lcom/nemustech/tiffany/world/TFSingleEffect3D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectFinish(Lcom/nemustech/tiffany/world/TFObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 227
    const-string v0, "TFSingleEffect3D"

    const-string v1, "EffectFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;->this$0:Lcom/nemustech/tiffany/world/TFSingleEffect3D;

    const/4 v1, 0x0

    iput v1, v0, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->mState:I

    .line 229
    iget-object v0, p0, Lcom/nemustech/tiffany/world/TFSingleEffect3D$1;->this$0:Lcom/nemustech/tiffany/world/TFSingleEffect3D;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/world/TFSingleEffect3D;->OnFinishEffect()V

    .line 230
    return-void
.end method
