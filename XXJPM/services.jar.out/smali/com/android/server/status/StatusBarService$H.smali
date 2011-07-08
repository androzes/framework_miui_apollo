.class Lcom/android/server/status/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/status/StatusBarService;Lcom/android/server/status/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/android/server/status/StatusBarService$H;-><init>(Lcom/android/server/status/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "m"

    .prologue
    .line 1028
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x3e8

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/status/StatusBarService;->doAnimation()V

    .line 1135
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    const/16 v17, 0x3e9

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/status/StatusBarService;->doRevealAnimation()V

    goto :goto_0

    .line 1038
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mQueueLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1039
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    move-object v13, v0

    .line 1040
    .local v13, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/server/status/StatusBarService;->mQueue:Ljava/util/ArrayList;

    .line 1041
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/status/StatusBarService;->mExpanded:Z

    move v15, v0

    .line 1047
    .local v15, wasExpanded:Z
    move v9, v15

    .line 1048
    .local v9, expand:Z
    const/4 v6, 0x0

    .line 1049
    .local v6, doExpand:Z
    const/4 v5, 0x0

    .line 1050
    .local v5, doDisable:Z
    const/4 v4, 0x0

    .line 1051
    .local v4, disableWhat:I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1052
    .local v3, N:I
    :cond_3
    :goto_1
    if-lez v3, :cond_d

    .line 1053
    const/16 v16, 0x0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 1054
    .local v12, op:Lcom/android/server/status/StatusBarService$PendingOp;
    const/4 v7, 0x0

    .line 1055
    .local v7, doOp:Z
    const/4 v14, 0x0

    .line 1056
    .local v14, visible:Z
    const/4 v8, 0x0

    .line 1057
    .local v8, doVisibility:Z
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1058
    const/4 v8, 0x1

    .line 1059
    iget-boolean v14, v12, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1073
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/status/StatusBarService;->access$800(Lcom/android/server/status/StatusBarService;I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1075
    const/4 v10, 0x1

    .local v10, i:I
    :goto_3
    if-ge v10, v3, :cond_b

    .line 1076
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/status/StatusBarService$PendingOp;

    .line 1077
    .local v11, o:Lcom/android/server/status/StatusBarService$PendingOp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object v0, v11

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/status/StatusBarService;->access$800(Lcom/android/server/status/StatusBarService;I)Z

    move-result v16

    if-nez v16, :cond_4

    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v16, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1078
    move-object v0, v11

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 1079
    iget-boolean v14, v11, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1080
    const/4 v8, 0x1

    .line 1091
    :goto_4
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1092
    add-int/lit8 v10, v10, -0x1

    .line 1093
    add-int/lit8 v3, v3, -0x1

    .line 1075
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1041
    .end local v3           #N:I
    .end local v4           #disableWhat:I
    .end local v5           #doDisable:Z
    .end local v6           #doExpand:Z
    .end local v7           #doOp:Z
    .end local v8           #doVisibility:Z
    .end local v9           #expand:Z
    .end local v10           #i:I
    .end local v11           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v12           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v13           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    .end local v14           #visible:Z
    .end local v15           #wasExpanded:Z
    :catchall_0
    move-exception v17

    :try_start_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v17

    .line 1061
    .restart local v3       #N:I
    .restart local v4       #disableWhat:I
    .restart local v5       #doDisable:Z
    .restart local v6       #doExpand:Z
    .restart local v7       #doOp:Z
    .restart local v8       #doVisibility:Z
    .restart local v9       #expand:Z
    .restart local v12       #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .restart local v13       #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/status/StatusBarService$PendingOp;>;"
    .restart local v14       #visible:Z
    .restart local v15       #wasExpanded:Z
    :cond_5
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1062
    const/4 v6, 0x1

    .line 1063
    iget-boolean v9, v12, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    goto :goto_2

    .line 1065
    :cond_6
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    .line 1066
    const/4 v6, 0x1

    .line 1067
    if-nez v9, :cond_7

    const/16 v16, 0x1

    move/from16 v9, v16

    :goto_5
    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    move/from16 v9, v16

    goto :goto_5

    .line 1070
    :cond_8
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 1082
    .restart local v10       #i:I
    .restart local v11       #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_9
    move-object v0, v11

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1083
    iget-boolean v9, v11, Lcom/android/server/status/StatusBarService$PendingOp;->visible:Z

    .line 1084
    const/4 v6, 0x1

    goto :goto_4

    .line 1087
    :cond_a
    move-object v0, v11

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v12

    iput v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    .line 1088
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    iput-object v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    .line 1089
    move-object v0, v11

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v12

    iput-object v0, v1, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    goto :goto_4

    .line 1098
    .end local v10           #i:I
    .end local v11           #o:Lcom/android/server/status/StatusBarService$PendingOp;
    :cond_b
    const/16 v16, 0x0

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1099
    add-int/lit8 v3, v3, -0x1

    .line 1101
    if-eqz v7, :cond_c

    .line 1102
    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 1116
    :cond_c
    :goto_6
    :pswitch_0
    if-eqz v8, :cond_3

    move-object v0, v12

    iget v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->code:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/status/StatusBarService;->performSetIconVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_1

    .line 1105
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v17, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->iconData:Lcom/android/server/status/IconData;

    move-object/from16 v18, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->notificationData:Lcom/android/server/status/NotificationData;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Lcom/android/server/status/StatusBarService;->performAddUpdateIcon(Landroid/os/IBinder;Lcom/android/server/status/IconData;Lcom/android/server/status/NotificationData;)V

    goto :goto_6

    .line 1108
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$PendingOp;->key:Landroid/os/IBinder;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/server/status/StatusBarService;->performRemoveIcon(Landroid/os/IBinder;)V

    goto :goto_6

    .line 1111
    :pswitch_3
    const/4 v5, 0x1

    .line 1112
    iget v4, v12, Lcom/android/server/status/StatusBarService$PendingOp;->integer:I

    goto :goto_6

    .line 1121
    .end local v7           #doOp:Z
    .end local v8           #doVisibility:Z
    .end local v12           #op:Lcom/android/server/status/StatusBarService$PendingOp;
    .end local v14           #visible:Z
    :cond_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-eqz v16, :cond_e

    .line 1122
    new-instance v16, Ljava/lang/RuntimeException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Assertion failed: queue.size="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1124
    :cond_e
    if-eqz v6, :cond_f

    .line 1126
    if-eqz v9, :cond_10

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/status/StatusBarService;->animateExpand()V

    .line 1132
    :cond_f
    :goto_7
    if-eqz v5, :cond_0

    .line 1133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarService;->performDisableActions(I)V

    goto/16 :goto_0

    .line 1129
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/status/StatusBarService$H;->this$0:Lcom/android/server/status/StatusBarService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/status/StatusBarService;->animateCollapse()V

    goto :goto_7

    .line 1102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
