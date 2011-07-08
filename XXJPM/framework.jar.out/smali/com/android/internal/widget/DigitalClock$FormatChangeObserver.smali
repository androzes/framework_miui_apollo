.class Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DigitalClock;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/DigitalClock;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$400(Lcom/android/internal/widget/DigitalClock;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/widget/DigitalClock$FormatChangeObserver;->this$0:Lcom/android/internal/widget/DigitalClock;

    invoke-static {v0}, Lcom/android/internal/widget/DigitalClock;->access$200(Lcom/android/internal/widget/DigitalClock;)V

    .line 105
    return-void
.end method
