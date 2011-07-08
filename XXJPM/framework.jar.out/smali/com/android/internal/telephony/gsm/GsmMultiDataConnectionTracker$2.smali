.class Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmMultiDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 1131
    const-wide/16 v12, -0x1

    .local v12, preTxPkts:J
    const-wide/16 v10, -0x1

    .line 1133
    .local v10, preRxPkts:J
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1135
    .local v7, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v12

    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v10

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1145
    .local v4, curCalendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1148
    .local v5, curPollTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-wide/16 v19, 0x0

    cmp-long v19, v12, v19

    if-gtz v19, :cond_0

    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-lez v19, :cond_1

    .line 1149
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    sub-long v16, v19, v12

    .line 1150
    .local v16, sent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    sub-long v14, v19, v10

    .line 1152
    .local v14, received:J
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_5

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_5

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1202(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1154
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1174
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v7

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1182
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_1
    sget-object v19, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-object v0, v7

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 1183
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2202(Z)Z

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1194
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    const-wide/16 v21, 0x1388

    cmp-long v19, v19, v21

    if-ltz v19, :cond_2

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)V

    .line 1199
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pdp_watchdog_trigger_packet_count"

    const/16 v21, 0xa

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 1203
    .local v18, watchdogTrigger:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2800(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-ltz v19, :cond_d

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v19

    if-nez v19, :cond_3

    .line 1206
    const v19, 0xc3b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3000(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v20

    invoke-static/range {v19 .. v21}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1210
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pdp_watchdog_error_poll_count"

    const/16 v21, 0x18

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1213
    .local v8, noRecvPollLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v19

    move/from16 v0, v19

    move v1, v8

    if-ge v0, v1, :cond_c

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-string v20, "no DATAIN in a while; polling PDP"

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    const/16 v21, 0xb

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3308(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pdp_watchdog_error_poll_interval_ms"

    const/16 v22, 0x1388

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1256
    .end local v8           #noRecvPollLimit:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4300(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4200(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1261
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2402(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1264
    return-void

    .line 1156
    .end local v18           #watchdogTrigger:I
    .restart local v14       #received:J
    .restart local v16       #sent:J
    :cond_5
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-lez v19, :cond_7

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_7

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v19

    sget-object v20, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1514(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1162
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1160
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1602(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto :goto_3

    .line 1163
    :cond_7
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_8

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-lez v19, :cond_8

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1165
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_0

    .line 1167
    :cond_8
    const-wide/16 v19, 0x0

    cmp-long v19, v16, v19

    if-nez v19, :cond_9

    const-wide/16 v19, 0x0

    cmp-long v19, v14, v19

    if-nez v19, :cond_9

    .line 1168
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1170
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$1802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    .line 1171
    sget-object v7, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    goto/16 :goto_0

    .line 1188
    .end local v14           #received:J
    .end local v16           #sent:J
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-nez v19, :cond_b

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2314(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto/16 :goto_1

    .line 1191
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v20

    sub-long v20, v5, v20

    invoke-static/range {v19 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2314(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;J)J

    goto/16 :goto_1

    .line 1226
    .restart local v8       #noRecvPollLimit:I
    .restart local v18       #watchdogTrigger:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Sent "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3500(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " pkts since last received"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->stopNetStatPoll()V

    .line 1231
    new-instance v9, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2$1;-><init>(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;)V

    .line 1236
    .local v9, pingTest:Ljava/lang/Thread;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3702(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;Z)Z

    .line 1237
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto/16 :goto_2

    .line 1240
    .end local v8           #noRecvPollLimit:I
    .end local v9           #pingTest:Ljava/lang/Thread;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3802(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pdp_watchdog_poll_interval_ms"

    const/16 v22, 0x3e8

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$3902(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_2

    .line 1246
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;->access$4002(Lcom/android/internal/telephony/gsm/GsmMultiDataConnectionTracker;I)I

    goto/16 :goto_2
.end method
