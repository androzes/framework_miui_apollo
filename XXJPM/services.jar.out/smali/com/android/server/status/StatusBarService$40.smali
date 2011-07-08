.class Lcom/android/server/status/StatusBarService$40;
.super Ljava/lang/Object;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$status$StatusBarService$DataConnState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 501
    invoke-static {}, Lcom/android/server/status/StatusBarService$DataConnState;->values()[Lcom/android/server/status/StatusBarService$DataConnState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/status/StatusBarService$40;->$SwitchMap$com$android$server$status$StatusBarService$DataConnState:[I

    :try_start_0
    sget-object v0, Lcom/android/server/status/StatusBarService$40;->$SwitchMap$com$android$server$status$StatusBarService$DataConnState:[I

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_ON:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService$DataConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/status/StatusBarService$40;->$SwitchMap$com$android$server$status$StatusBarService$DataConnState:[I

    sget-object v1, Lcom/android/server/status/StatusBarService$DataConnState;->DATA_TURNING_OFF:Lcom/android/server/status/StatusBarService$DataConnState;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService$DataConnState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
