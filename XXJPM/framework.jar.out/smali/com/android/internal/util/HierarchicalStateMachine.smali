.class public Lcom/android/internal/util/HierarchicalStateMachine;
.super Ljava/lang/Object;
.source "HierarchicalStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/HierarchicalStateMachine$1;,
        Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;
    }
.end annotation


# static fields
.field public static final HSM_QUIT_CMD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HierarchicalStateMachine"


# instance fields
.field private mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

.field private mHsmThread:Landroid/os/HandlerThread;

.field private mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1004
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    .line 1005
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1006
    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1008
    .local v0, looper:Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1009
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 1016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1018
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/HierarchicalStateMachine;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .locals 2
    .parameter "name"
    .parameter "looper"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    .line 995
    new-instance v0, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/HierarchicalStateMachine;Lcom/android/internal/util/HierarchicalStateMachine$1;)V

    iput-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    .line 996
    return-void
.end method


# virtual methods
.method protected final addState(Lcom/android/internal/util/HierarchicalState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 1042
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "state"
    .parameter "parent"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$StateInfo;

    .line 1027
    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1100(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)V

    .line 1088
    return-void
.end method

.method protected final getCurrentState()Lcom/android/internal/util/HierarchicalState;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessedMessage(I)Lcom/android/internal/util/ProcessedMessages$Info;
    .locals 1
    .parameter "index"

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1500(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)Lcom/android/internal/util/ProcessedMessages$Info;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessedMessagesCount()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1400(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method public final getProcessedMessagesSize()I
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1300(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)I

    move-result v0

    return v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1105
    return-void
.end method

.method protected halting()V
    .locals 0

    .prologue
    .line 1113
    return-void
.end method

.method public isDbg()Z
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Z

    move-result v0

    return v0
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1700(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public final obtainMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final quit()V
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1600(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    .line 1275
    return-void
.end method

.method protected quitting()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method public final sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1204
    return-void
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1211
    return-void
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1218
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1255
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1247
    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1263
    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .locals 2
    .parameter "what"
    .parameter "delayMillis"

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1225
    return-void
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/HierarchicalStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1232
    return-void
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .locals 1
    .parameter "msg"
    .parameter "delayMillis"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1239
    return-void
.end method

.method public setDbg(Z)V
    .locals 1
    .parameter "dbg"

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Z)V

    .line 1298
    return-void
.end method

.method protected final setInitialState(Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "initialState"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$800(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1052
    return-void
.end method

.method public final setProcessedMessagesSize(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1200(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;I)V

    .line 1136
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$2000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)V

    .line 1306
    return-void
.end method

.method protected final transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    .locals 1
    .parameter "destState"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v0, p1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1064
    return-void
.end method

.method protected final transitionToHaltingState()V
    .locals 2

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    iget-object v1, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mHsmHandler:Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;

    invoke-static {v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$1000(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;)Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler$HaltingState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;->access$900(Lcom/android/internal/util/HierarchicalStateMachine$HsmHandler;Lcom/android/internal/util/HierarchicalState;)V

    .line 1075
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1097
    const-string v0, "HierarchicalStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/util/HierarchicalStateMachine;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - unhandledMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return-void
.end method
