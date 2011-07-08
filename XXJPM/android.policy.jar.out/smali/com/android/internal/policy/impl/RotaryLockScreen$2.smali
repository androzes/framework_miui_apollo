.class Lcom/android/internal/policy/impl/RotaryLockScreen$2;
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

.field final synthetic val$iconResourceId:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/RotaryLockScreen;Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->this$0:Lcom/android/internal/policy/impl/RotaryLockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$textView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$text:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$iconResourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$textView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$textView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$iconResourceId:I

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/RotaryLockScreen$2;->val$textView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 279
    return-void
.end method
