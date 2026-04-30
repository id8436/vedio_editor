.class Lcom/adobe/mobile/VisitorIDService$2;
.super Ljava/lang/Object;
.source "VisitorIDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/adobe/mobile/VisitorIDService;

.field final synthetic val$authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

.field final synthetic val$dpidsCopy:Ljava/util/HashMap;

.field final synthetic val$identifiersCopy:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/VisitorIDService;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iput-object p2, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$identifiersCopy:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$dpidsCopy:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 140
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getVisitorIdServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getMarketingCloudOrganizationId()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v0

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$1000(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$900(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    move v0, v9

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$identifiersCopy:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    move v1, v9

    .line 147
    :goto_2
    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$dpidsCopy:Ljava/util/HashMap;

    if-eqz v2, :cond_e

    move v2, v9

    .line 149
    :goto_3
    iget-object v4, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v4}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/adobe/mobile/MobileConfig;->getInstance()Lcom/adobe/mobile/MobileConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/mobile/MobileConfig;->getSSL()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "https"

    :goto_4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-object v0, Lcom/adobe/mobile/VisitorIDService;->SERVER:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v0, "/id?d_ver=2&d_orgid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string/jumbo v0, "d_mid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 167
    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string/jumbo v0, "d_blob"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 174
    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v0, "dcs_region"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string/jumbo v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    :cond_5
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$identifiersCopy:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$authenticationState:Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;

    invoke-static {v0, v2, v3}, Lcom/adobe/mobile/VisitorIDService;->access$1100(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;Lcom/adobe/mobile/VisitorID$VisitorIDAuthenticationState;)Ljava/util/List;

    move-result-object v2

    .line 181
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0, v2}, Lcom/adobe/mobile/VisitorIDService;->access$500(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_6
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v3, p0, Lcom/adobe/mobile/VisitorIDService$2;->val$dpidsCopy:Ljava/util/HashMap;

    invoke-static {v0, v3}, Lcom/adobe/mobile/VisitorIDService;->access$1200(Lcom/adobe/mobile/VisitorIDService;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    const-string/jumbo v1, "ID Service - Sending id sync call (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const/16 v1, 0x7d0

    const-string/jumbo v3, "ID Service"

    invoke-static {v0, v6, v1, v3}, Lcom/adobe/mobile/RequestHandler;->retrieveData(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)[B

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-virtual {v1, v0}, Lcom/adobe/mobile/VisitorIDService;->parseResponse([B)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_10

    const-string/jumbo v1, "d_mid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v1, "error_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    const-string/jumbo v3, "d_mid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/mobile/VisitorIDService;->access$602(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    const-string/jumbo v1, "d_blob"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 203
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    const-string/jumbo v3, "d_blob"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/mobile/VisitorIDService;->access$802(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    :cond_8
    const-string/jumbo v1, "dcs_region"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 207
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    const-string/jumbo v3, "dcs_region"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/adobe/mobile/VisitorIDService;->access$702(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    :cond_9
    const-string/jumbo v1, "id_sync_ttl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 211
    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    const-string/jumbo v3, "id_sync_ttl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v1, v4, v5}, Lcom/adobe/mobile/VisitorIDService;->access$902(Lcom/adobe/mobile/VisitorIDService;J)J

    .line 213
    :cond_a
    const-string/jumbo v0, "ID Service - Got ID Response (mid: %s, blob: %s, hint: %s, ttl: %d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v4}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v4}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v4}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v4}, Lcom/adobe/mobile/VisitorIDService;->access$900(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getTimeSince1970()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/adobe/mobile/VisitorIDService;->access$1002(Lcom/adobe/mobile/VisitorIDService;J)J

    .line 240
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1, v2}, Lcom/adobe/mobile/VisitorIDService;->access$1400(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/VisitorIDService;->access$002(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$000(Lcom/adobe/mobile/VisitorIDService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/mobile/VisitorIDService;->access$300(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/VisitorIDService;->access$202(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$000(Lcom/adobe/mobile/VisitorIDService;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adobe/mobile/VisitorIDService;->access$500(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/VisitorIDService;->access$402(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$000(Lcom/adobe/mobile/VisitorIDService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/VisitorIDService;->access$1500(Lcom/adobe/mobile/VisitorIDService;Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 245
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$900(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$1000(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v6

    invoke-static/range {v1 .. v8}, Lcom/adobe/mobile/WearableFunctionBridge;->syncVidServiceToWearable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 248
    :try_start_1
    invoke-static {}, Lcom/adobe/mobile/StaticMethods;->getSharedPreferencesEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    const-string/jumbo v1, "ADBMOBILE_VISITORID_IDS"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    const-string/jumbo v1, "ADBMOBILE_PERSISTED_MID"

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    const-string/jumbo v1, "ADBMOBILE_PERSISTED_MID_HINT"

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$700(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    const-string/jumbo v1, "ADBMOBILE_PERSISTED_MID_BLOB"

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$800(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 253
    const-string/jumbo v1, "ADBMOBILE_VISITORID_TTL"

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$900(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 254
    const-string/jumbo v1, "ADBMOBILE_VISITORID_SYNC"

    iget-object v2, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v2}, Lcom/adobe/mobile/VisitorIDService;->access$1000(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lcom/adobe/mobile/StaticMethods$NullContextException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string/jumbo v1, "ID Service - Unable to persist identifiers to shared preferences(%s)"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/adobe/mobile/StaticMethods$NullContextException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-static {v1, v2}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    move v0, v10

    .line 145
    goto/16 :goto_1

    :cond_d
    move v1, v10

    .line 146
    goto/16 :goto_2

    :cond_e
    move v2, v10

    .line 147
    goto/16 :goto_3

    .line 153
    :cond_f
    const-string/jumbo v0, "http"

    goto/16 :goto_4

    .line 214
    :catch_1
    move-exception v0

    .line 215
    const-string/jumbo v1, "ID Service - Error parsing response (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 219
    :cond_10
    if-eqz v0, :cond_11

    const-string/jumbo v1, "error_msg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 221
    :try_start_2
    const-string/jumbo v1, "ID Service - Service returned error (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "error_msg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 226
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    iget-object v1, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v1}, Lcom/adobe/mobile/VisitorIDService;->access$1300(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/mobile/VisitorIDService;->access$602(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0, v6}, Lcom/adobe/mobile/VisitorIDService;->access$802(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v0, v6}, Lcom/adobe/mobile/VisitorIDService;->access$702(Lcom/adobe/mobile/VisitorIDService;Ljava/lang/String;)Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    const-wide/16 v4, 0x258

    invoke-static {v0, v4, v5}, Lcom/adobe/mobile/VisitorIDService;->access$902(Lcom/adobe/mobile/VisitorIDService;J)J

    .line 233
    const-string/jumbo v0, "ID Service - Did not return an ID, generating one locally (mid: %s, ttl: %d)"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v3}, Lcom/adobe/mobile/VisitorIDService;->access$600(Lcom/adobe/mobile/VisitorIDService;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    iget-object v3, p0, Lcom/adobe/mobile/VisitorIDService$2;->this$0:Lcom/adobe/mobile/VisitorIDService;

    invoke-static {v3}, Lcom/adobe/mobile/VisitorIDService;->access$900(Lcom/adobe/mobile/VisitorIDService;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-static {v0, v1}, Lcom/adobe/mobile/StaticMethods;->logDebugFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 222
    :catch_2
    move-exception v0

    .line 223
    const-string/jumbo v1, "ID Service - Unable to read error condition(%s)"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v10

    invoke-static {v1, v3}, Lcom/adobe/mobile/StaticMethods;->logErrorFormat(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6
.end method
