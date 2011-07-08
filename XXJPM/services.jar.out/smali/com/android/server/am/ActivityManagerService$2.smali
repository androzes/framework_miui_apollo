.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    .line 1020
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1241
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1022
    .restart local p0
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/HashMap;

    .line 1023
    .local v21, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1024
    :try_start_0
    const-string v6, "app"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ProcessRecord;

    .line 1025
    .local v25, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v25, :cond_1

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 1026
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    monitor-exit v5

    goto :goto_0

    .line 1039
    .end local v25           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1029
    .restart local v25       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_1
    const-string v6, "result"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/am/AppErrorResult;

    .line 1030
    .local v27, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_2

    .line 1031
    new-instance v20, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object v1, v6

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1032
    .local v20, d:Landroid/app/Dialog;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1033
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1039
    .end local v20           #d:Landroid/app/Dialog;
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1037
    :cond_2
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v27

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1044
    .end local v21           #data:Ljava/util/HashMap;
    .end local v25           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v27           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1045
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/util/HashMap;

    .line 1046
    .restart local v21       #data:Ljava/util/HashMap;
    const-string v5, "app"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/am/ProcessRecord;

    .line 1047
    .restart local v25       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v25, :cond_3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1048
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    monitor-exit v19

    goto/16 :goto_0

    .line 1060
    .end local v21           #data:Ljava/util/HashMap;
    .end local v25           #proc:Lcom/android/server/am/ProcessRecord;
    .end local p1
    :catchall_1
    move-exception v5

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1052
    .restart local v21       #data:Ljava/util/HashMap;
    .restart local v25       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.ANR"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    invoke-static/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1056
    new-instance v20, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/am/HistoryRecord;

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HistoryRecord;)V

    .line 1058
    .restart local v20       #d:Landroid/app/Dialog;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1059
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1060
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1065
    .end local v20           #d:Landroid/app/Dialog;
    .end local v21           #data:Ljava/util/HashMap;
    .end local v25           #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :pswitch_3
    new-instance v20, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1067
    .restart local v20       #d:Landroid/app/Dialog;
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1071
    .end local v20           #d:Landroid/app/Dialog;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    .line 1072
    .local v28, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1075
    .end local v28           #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1076
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1077
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 1080
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1081
    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1082
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_5

    .line 1083
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    move v6, v0

    if-nez v6, :cond_4

    .line 1084
    new-instance v20, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1087
    .restart local v20       #d:Landroid/app/Dialog;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1088
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1089
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 1097
    .end local v20           #d:Landroid/app/Dialog;
    :cond_4
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v6

    .line 1092
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_5
    :try_start_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_4

    .line 1093
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1094
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    .line 1102
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_0

    .line 1105
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_6

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 1108
    .local v24, nmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x4e20

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1114
    .end local v24           #nmsg:Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v5, :cond_0

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 1119
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 1122
    .local v29, token:Landroid/os/IBinder;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity pause timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 1126
    .end local v29           #token:Landroid/os/IBinder;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_7

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 1129
    .restart local v24       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1135
    .end local v24           #nmsg:Landroid/os/Message;
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 1136
    .restart local v29       #token:Landroid/os/IBinder;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity idle timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 1140
    .end local v29           #token:Landroid/os/IBinder;
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 1143
    .restart local v29       #token:Landroid/os/IBinder;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity destroy timeout for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->activityDestroyed(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 1147
    .end local v29           #token:Landroid/os/IBinder;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 1148
    .restart local v29       #token:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    goto/16 :goto_0

    .line 1151
    .end local v29           #token:Landroid/os/IBinder;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_8

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 1154
    .restart local v24       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x7530

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1158
    .end local v24           #nmsg:Landroid/os/Message;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1161
    .restart local p0
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1162
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v23, v6, v7

    .local v23, i:I
    :goto_3
    if-ltz v23, :cond_a

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ProcessRecord;

    .line 1164
    .local v26, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v6, :cond_9

    .line 1166
    :try_start_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1162
    :cond_9
    :goto_4
    add-int/lit8 v23, v23, -0x1

    goto :goto_3

    .line 1167
    :catch_0
    move-exception v6

    move-object/from16 v22, v6

    .line 1168
    .local v22, ex:Landroid/os/RemoteException;
    :try_start_a
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1172
    .end local v22           #ex:Landroid/os/RemoteException;
    .end local v23           #i:I
    .end local v26           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v6

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6

    .restart local v23       #i:I
    :cond_a
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_0

    .line 1176
    .end local v23           #i:I
    :pswitch_f
    new-instance v20, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1177
    .local v20, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1178
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1179
    const-string v5, "System UIDs Inconsistent"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1180
    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1181
    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1184
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1187
    .end local v20           #d:Landroid/app/AlertDialog;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1193
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_b

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 1196
    .restart local v24       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1199
    .end local v24           #nmsg:Landroid/os/Message;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1200
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1201
    const-string v6, "ActivityManager"

    const-string v7, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1204
    :cond_c
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v6

    .line 1207
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1208
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/HistoryRecord;)Z

    .line 1209
    monitor-exit v5

    goto/16 :goto_0

    :catchall_6
    move-exception v6

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v6

    .line 1212
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_d

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v24

    .line 1215
    .restart local v24       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v24

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0x2710

    move-object v0, v5

    move-object/from16 v1, v24

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1219
    .end local v24           #nmsg:Landroid/os/Message;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1220
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1221
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1222
    monitor-exit v5

    goto/16 :goto_0

    :catchall_7
    move-exception v6

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v6

    .line 1225
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1226
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1227
    monitor-exit v5

    goto/16 :goto_0

    :catchall_8
    move-exception v6

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v6

    .line 1230
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v11, v0

    monitor-enter v11

    .line 1231
    :try_start_10
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    .line 1232
    .local v7, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    move v8, v5

    .line 1233
    .local v8, restart:Z
    :goto_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 1234
    .local v6, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    .line 1235
    monitor-exit v11

    goto/16 :goto_0

    .end local v6           #pkg:Ljava/lang/String;
    .end local v7           #uid:I
    .end local v8           #restart:Z
    :catchall_9
    move-exception v5

    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw v5

    .line 1232
    .restart local v7       #uid:I
    :cond_e
    const/4 v5, 0x0

    move v8, v5

    goto :goto_5

    .line 1238
    .end local v7           #uid:I
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1020
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_b
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
