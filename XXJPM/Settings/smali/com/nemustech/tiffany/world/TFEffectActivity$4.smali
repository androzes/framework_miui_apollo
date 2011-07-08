.class Lcom/nemustech/tiffany/world/TFEffectActivity$4;
.super Ljava/lang/Object;
.source "TFEffectActivity.java"

# interfaces
.implements Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFEffectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$4;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(IZ)V
    .locals 0
    .parameter "EffectKind"
    .parameter "bReversed"

    .prologue
    .line 206
    return-void
.end method

.method public onAnimationStart(IZ)V
    .locals 3
    .parameter "EffectKind"
    .parameter "bReversed"

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFEffectActivity$4;->this$0:Lcom/nemustech/tiffany/world/TFEffectActivity;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFEffectActivity;->access$1000(Lcom/nemustech/tiffany/world/TFEffectActivity;)Lcom/nemustech/tiffany/world/ITFServiceTo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/nemustech/tiffany/world/ITFServiceTo;->showBlockWindow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
