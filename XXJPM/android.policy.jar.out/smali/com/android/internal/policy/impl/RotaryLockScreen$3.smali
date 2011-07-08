.class Lcom/android/internal/policy/impl/RotaryLockScreen$3;
.super Ljava/lang/Object;
.source "RotaryLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/RotaryLockScreen;->toastMessage(Landroid/widget/TextView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RotaryLockScreen;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$3;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$3;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$3;->val$textView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$3;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 286
    return-void
.end method
