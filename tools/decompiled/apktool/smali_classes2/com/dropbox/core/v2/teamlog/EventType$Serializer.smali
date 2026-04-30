.class Lcom/dropbox/core/v2/teamlog/EventType$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EventType$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1215
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventType$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1214
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 2311
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 2312
    const/4 v1, 0x1

    .line 2313
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 2314
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 2321
    :goto_0
    if-nez v0, :cond_1

    .line 2322
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 2317
    :cond_0
    const/4 v1, 0x0

    .line 2318
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 2319
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2324
    :cond_1
    const-string/jumbo v2, "member_change_membership_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2325
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_MEMBERSHIP_TYPE:Lcom/dropbox/core/v2/teamlog/EventType;

    .line 3137
    :goto_1
    if-nez v1, :cond_2

    .line 3138
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 3139
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 3141
    :cond_2
    return-object v0

    .line 2327
    :cond_3
    const-string/jumbo v2, "member_permanently_delete_account_contents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2328
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_PERMANENTLY_DELETE_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2330
    :cond_4
    const-string/jumbo v2, "member_space_limits_change_status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2331
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2333
    :cond_5
    const-string/jumbo v2, "member_transfer_account_contents"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2334
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_TRANSFER_ACCOUNT_CONTENTS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2336
    :cond_6
    const-string/jumbo v2, "paper_admin_export_start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2337
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ADMIN_EXPORT_START:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2339
    :cond_7
    const-string/jumbo v2, "paper_enabled_users_group_addition"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2340
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ENABLED_USERS_GROUP_ADDITION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2342
    :cond_8
    const-string/jumbo v2, "paper_enabled_users_group_removal"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2343
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_ENABLED_USERS_GROUP_REMOVAL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2345
    :cond_9
    const-string/jumbo v2, "paper_external_view_allow"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2346
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_ALLOW:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2348
    :cond_a
    const-string/jumbo v2, "paper_external_view_default_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2349
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_DEFAULT_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2351
    :cond_b
    const-string/jumbo v2, "paper_external_view_forbid"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2352
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_EXTERNAL_VIEW_FORBID:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2354
    :cond_c
    const-string/jumbo v2, "sf_external_invite_warn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2355
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_EXTERNAL_INVITE_WARN:Lcom/dropbox/core/v2/teamlog/EventType;

    goto :goto_1

    .line 2357
    :cond_d
    const-string/jumbo v2, "team_merge_from"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2358
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_MERGE_FROM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2360
    :cond_e
    const-string/jumbo v2, "team_merge_to"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2361
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_MERGE_TO:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2363
    :cond_f
    const-string/jumbo v2, "app_link_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2364
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->APP_LINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2366
    :cond_10
    const-string/jumbo v2, "app_link_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2367
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->APP_LINK_USER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2369
    :cond_11
    const-string/jumbo v2, "app_unlink_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2370
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->APP_UNLINK_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2372
    :cond_12
    const-string/jumbo v2, "app_unlink_user"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2373
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->APP_UNLINK_USER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2375
    :cond_13
    const-string/jumbo v2, "file_add_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2376
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2378
    :cond_14
    const-string/jumbo v2, "file_change_comment_subscription"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2379
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_CHANGE_COMMENT_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2381
    :cond_15
    const-string/jumbo v2, "file_delete_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2382
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2384
    :cond_16
    const-string/jumbo v2, "file_like_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2385
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_LIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2387
    :cond_17
    const-string/jumbo v2, "file_resolve_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2388
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2390
    :cond_18
    const-string/jumbo v2, "file_unlike_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2391
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_UNLIKE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2393
    :cond_19
    const-string/jumbo v2, "file_unresolve_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2394
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2396
    :cond_1a
    const-string/jumbo v2, "device_change_ip_desktop"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2397
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_DESKTOP:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2399
    :cond_1b
    const-string/jumbo v2, "device_change_ip_mobile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2400
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_MOBILE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2402
    :cond_1c
    const-string/jumbo v2, "device_change_ip_web"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2403
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_CHANGE_IP_WEB:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2405
    :cond_1d
    const-string/jumbo v2, "device_delete_on_unlink_fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2406
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_DELETE_ON_UNLINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2408
    :cond_1e
    const-string/jumbo v2, "device_delete_on_unlink_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2409
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_DELETE_ON_UNLINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2411
    :cond_1f
    const-string/jumbo v2, "device_link_fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2412
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_LINK_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2414
    :cond_20
    const-string/jumbo v2, "device_link_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2415
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_LINK_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2417
    :cond_21
    const-string/jumbo v2, "device_management_disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2418
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_MANAGEMENT_DISABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2420
    :cond_22
    const-string/jumbo v2, "device_management_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2421
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_MANAGEMENT_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2423
    :cond_23
    const-string/jumbo v2, "device_unlink"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 2424
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_UNLINK:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2426
    :cond_24
    const-string/jumbo v2, "emm_refresh_auth_token"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2427
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_REFRESH_AUTH_TOKEN:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2429
    :cond_25
    const-string/jumbo v2, "account_capture_change_availability"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2430
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_CHANGE_AVAILABILITY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2432
    :cond_26
    const-string/jumbo v2, "account_capture_migrate_account"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2433
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_MIGRATE_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2435
    :cond_27
    const-string/jumbo v2, "account_capture_relinquish_account"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2436
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_RELINQUISH_ACCOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2438
    :cond_28
    const-string/jumbo v2, "disabled_domain_invites"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 2439
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DISABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2441
    :cond_29
    const-string/jumbo v2, "domain_invites_approve_request_to_join_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2442
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_APPROVE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2444
    :cond_2a
    const-string/jumbo v2, "domain_invites_decline_request_to_join_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 2445
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_DECLINE_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2447
    :cond_2b
    const-string/jumbo v2, "domain_invites_email_existing_users"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2448
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_EMAIL_EXISTING_USERS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2450
    :cond_2c
    const-string/jumbo v2, "domain_invites_request_to_join_team"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 2451
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_REQUEST_TO_JOIN_TEAM:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2453
    :cond_2d
    const-string/jumbo v2, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2454
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_NO:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2456
    :cond_2e
    const-string/jumbo v2, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2457
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_INVITES_SET_INVITE_NEW_USER_PREF_TO_YES:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2459
    :cond_2f
    const-string/jumbo v2, "domain_verification_add_domain_fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2460
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_ADD_DOMAIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2462
    :cond_30
    const-string/jumbo v2, "domain_verification_add_domain_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2463
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_ADD_DOMAIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2465
    :cond_31
    const-string/jumbo v2, "domain_verification_remove_domain"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2466
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DOMAIN_VERIFICATION_REMOVE_DOMAIN:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2468
    :cond_32
    const-string/jumbo v2, "enabled_domain_invites"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2469
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ENABLED_DOMAIN_INVITES:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2471
    :cond_33
    const-string/jumbo v2, "create_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2472
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->CREATE_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2474
    :cond_34
    const-string/jumbo v2, "file_add"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2475
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ADD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2477
    :cond_35
    const-string/jumbo v2, "file_copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2478
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2480
    :cond_36
    const-string/jumbo v2, "file_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2481
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2483
    :cond_37
    const-string/jumbo v2, "file_download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2484
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2486
    :cond_38
    const-string/jumbo v2, "file_edit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2487
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_EDIT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2489
    :cond_39
    const-string/jumbo v2, "file_get_copy_reference"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2490
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_GET_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2492
    :cond_3a
    const-string/jumbo v2, "file_move"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2493
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_MOVE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2495
    :cond_3b
    const-string/jumbo v2, "file_permanently_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2496
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2498
    :cond_3c
    const-string/jumbo v2, "file_preview"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 2499
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_PREVIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2501
    :cond_3d
    const-string/jumbo v2, "file_rename"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2502
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2504
    :cond_3e
    const-string/jumbo v2, "file_restore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 2505
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_RESTORE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2507
    :cond_3f
    const-string/jumbo v2, "file_revert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2508
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REVERT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2510
    :cond_40
    const-string/jumbo v2, "file_rollback_changes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2511
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_ROLLBACK_CHANGES:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2513
    :cond_41
    const-string/jumbo v2, "file_save_copy_reference"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2514
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_SAVE_COPY_REFERENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2516
    :cond_42
    const-string/jumbo v2, "file_request_add_deadline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2517
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_ADD_DEADLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2519
    :cond_43
    const-string/jumbo v2, "file_request_change_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2520
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CHANGE_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2522
    :cond_44
    const-string/jumbo v2, "file_request_change_title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 2523
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CHANGE_TITLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2525
    :cond_45
    const-string/jumbo v2, "file_request_close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2526
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CLOSE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2528
    :cond_46
    const-string/jumbo v2, "file_request_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2529
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2531
    :cond_47
    const-string/jumbo v2, "file_request_receive_file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 2532
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_RECEIVE_FILE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2534
    :cond_48
    const-string/jumbo v2, "file_request_remove_deadline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2535
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_REMOVE_DEADLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2537
    :cond_49
    const-string/jumbo v2, "file_request_send"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2538
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUEST_SEND:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2540
    :cond_4a
    const-string/jumbo v2, "group_add_external_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2541
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_ADD_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2543
    :cond_4b
    const-string/jumbo v2, "group_add_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 2544
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2546
    :cond_4c
    const-string/jumbo v2, "group_change_external_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2547
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2549
    :cond_4d
    const-string/jumbo v2, "group_change_management_type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2550
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_MANAGEMENT_TYPE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2552
    :cond_4e
    const-string/jumbo v2, "group_change_member_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2553
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2555
    :cond_4f
    const-string/jumbo v2, "group_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2556
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2558
    :cond_50
    const-string/jumbo v2, "group_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 2559
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2561
    :cond_51
    const-string/jumbo v2, "group_moved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 2562
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_MOVED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2564
    :cond_52
    const-string/jumbo v2, "group_remove_external_id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2565
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_REMOVE_EXTERNAL_ID:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2567
    :cond_53
    const-string/jumbo v2, "group_remove_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2568
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2570
    :cond_54
    const-string/jumbo v2, "group_rename"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 2571
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2573
    :cond_55
    const-string/jumbo v2, "emm_login_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2574
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_LOGIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2576
    :cond_56
    const-string/jumbo v2, "logout"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 2577
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->LOGOUT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2579
    :cond_57
    const-string/jumbo v2, "password_login_fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 2580
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_LOGIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2582
    :cond_58
    const-string/jumbo v2, "password_login_success"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2583
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_LOGIN_SUCCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2585
    :cond_59
    const-string/jumbo v2, "reseller_support_session_end"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 2586
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->RESELLER_SUPPORT_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2588
    :cond_5a
    const-string/jumbo v2, "reseller_support_session_start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 2589
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->RESELLER_SUPPORT_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2591
    :cond_5b
    const-string/jumbo v2, "sign_in_as_session_end"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 2592
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SIGN_IN_AS_SESSION_END:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2594
    :cond_5c
    const-string/jumbo v2, "sign_in_as_session_start"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2595
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SIGN_IN_AS_SESSION_START:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2597
    :cond_5d
    const-string/jumbo v2, "sso_login_fail"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2598
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_LOGIN_FAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2600
    :cond_5e
    const-string/jumbo v2, "member_add_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 2601
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_ADD_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2603
    :cond_5f
    const-string/jumbo v2, "member_change_admin_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2604
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_ADMIN_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2606
    :cond_60
    const-string/jumbo v2, "member_change_email"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2607
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_EMAIL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2609
    :cond_61
    const-string/jumbo v2, "member_change_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2610
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2612
    :cond_62
    const-string/jumbo v2, "member_change_status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2613
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2615
    :cond_63
    const-string/jumbo v2, "member_suggest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 2616
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SUGGEST:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2618
    :cond_64
    const-string/jumbo v2, "paper_content_add_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2619
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2621
    :cond_65
    const-string/jumbo v2, "paper_content_add_to_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 2622
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ADD_TO_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2624
    :cond_66
    const-string/jumbo v2, "paper_content_archive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2625
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_ARCHIVE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2627
    :cond_67
    const-string/jumbo v2, "paper_content_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2628
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2630
    :cond_68
    const-string/jumbo v2, "paper_content_permanently_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 2631
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2633
    :cond_69
    const-string/jumbo v2, "paper_content_remove_from_folder"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2634
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_REMOVE_FROM_FOLDER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2636
    :cond_6a
    const-string/jumbo v2, "paper_content_remove_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 2637
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2639
    :cond_6b
    const-string/jumbo v2, "paper_content_rename"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2640
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2642
    :cond_6c
    const-string/jumbo v2, "paper_content_restore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2643
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CONTENT_RESTORE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2645
    :cond_6d
    const-string/jumbo v2, "paper_doc_add_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 2646
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_ADD_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2648
    :cond_6e
    const-string/jumbo v2, "paper_doc_change_member_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 2649
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2651
    :cond_6f
    const-string/jumbo v2, "paper_doc_change_sharing_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 2652
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_SHARING_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2654
    :cond_70
    const-string/jumbo v2, "paper_doc_change_subscription"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2655
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2657
    :cond_71
    const-string/jumbo v2, "paper_doc_deleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 2658
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DELETED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2660
    :cond_72
    const-string/jumbo v2, "paper_doc_delete_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2661
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DELETE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2663
    :cond_73
    const-string/jumbo v2, "paper_doc_download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 2664
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2666
    :cond_74
    const-string/jumbo v2, "paper_doc_edit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 2667
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_EDIT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2669
    :cond_75
    const-string/jumbo v2, "paper_doc_edit_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2670
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_EDIT_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2672
    :cond_76
    const-string/jumbo v2, "paper_doc_followed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 2673
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2675
    :cond_77
    const-string/jumbo v2, "paper_doc_mention"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2676
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_MENTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2678
    :cond_78
    const-string/jumbo v2, "paper_doc_request_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 2679
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2681
    :cond_79
    const-string/jumbo v2, "paper_doc_resolve_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2682
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_RESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2684
    :cond_7a
    const-string/jumbo v2, "paper_doc_revert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 2685
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_REVERT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2687
    :cond_7b
    const-string/jumbo v2, "paper_doc_slack_share"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 2688
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_SLACK_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2690
    :cond_7c
    const-string/jumbo v2, "paper_doc_team_invite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 2691
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2693
    :cond_7d
    const-string/jumbo v2, "paper_doc_trashed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2694
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_TRASHED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2696
    :cond_7e
    const-string/jumbo v2, "paper_doc_unresolve_comment"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 2697
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_UNRESOLVE_COMMENT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2699
    :cond_7f
    const-string/jumbo v2, "paper_doc_untrashed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 2700
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_UNTRASHED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2702
    :cond_80
    const-string/jumbo v2, "paper_doc_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2703
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_DOC_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2705
    :cond_81
    const-string/jumbo v2, "paper_folder_change_subscription"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 2706
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_CHANGE_SUBSCRIPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2708
    :cond_82
    const-string/jumbo v2, "paper_folder_deleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 2709
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_DELETED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2711
    :cond_83
    const-string/jumbo v2, "paper_folder_followed"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 2712
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_FOLLOWED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2714
    :cond_84
    const-string/jumbo v2, "paper_folder_team_invite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 2715
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_FOLDER_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2717
    :cond_85
    const-string/jumbo v2, "password_change"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 2718
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_CHANGE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2720
    :cond_86
    const-string/jumbo v2, "password_reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 2721
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_RESET:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2723
    :cond_87
    const-string/jumbo v2, "password_reset_all"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 2724
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PASSWORD_RESET_ALL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2726
    :cond_88
    const-string/jumbo v2, "emm_create_exceptions_report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 2727
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CREATE_EXCEPTIONS_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2729
    :cond_89
    const-string/jumbo v2, "emm_create_usage_report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 2730
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CREATE_USAGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2732
    :cond_8a
    const-string/jumbo v2, "smart_sync_create_admin_privilege_report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 2733
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_CREATE_ADMIN_PRIVILEGE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2735
    :cond_8b
    const-string/jumbo v2, "team_activity_create_report"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 2736
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_ACTIVITY_CREATE_REPORT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2738
    :cond_8c
    const-string/jumbo v2, "collection_share"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 2739
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->COLLECTION_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2741
    :cond_8d
    const-string/jumbo v2, "note_acl_invite_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 2742
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_INVITE_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2744
    :cond_8e
    const-string/jumbo v2, "note_acl_link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 2745
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2747
    :cond_8f
    const-string/jumbo v2, "note_acl_team_link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 2748
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_ACL_TEAM_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2750
    :cond_90
    const-string/jumbo v2, "note_shared"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 2751
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2753
    :cond_91
    const-string/jumbo v2, "note_share_receive"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 2754
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NOTE_SHARE_RECEIVE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2756
    :cond_92
    const-string/jumbo v2, "open_note_shared"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_93

    .line 2757
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->OPEN_NOTE_SHARED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2759
    :cond_93
    const-string/jumbo v2, "sf_add_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_94

    .line 2760
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_ADD_GROUP:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2762
    :cond_94
    const-string/jumbo v2, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 2763
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_ALLOW_NON_MEMBERS_TO_VIEW_SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2765
    :cond_95
    const-string/jumbo v2, "sf_invite_group"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 2766
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_INVITE_GROUP:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2768
    :cond_96
    const-string/jumbo v2, "sf_nest"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2769
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_NEST:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2771
    :cond_97
    const-string/jumbo v2, "sf_team_decline"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 2772
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_DECLINE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2774
    :cond_98
    const-string/jumbo v2, "sf_team_grant_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 2775
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_GRANT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2777
    :cond_99
    const-string/jumbo v2, "sf_team_invite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2778
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_INVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2780
    :cond_9a
    const-string/jumbo v2, "sf_team_invite_change_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 2781
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_INVITE_CHANGE_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2783
    :cond_9b
    const-string/jumbo v2, "sf_team_join"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 2784
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_JOIN:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2786
    :cond_9c
    const-string/jumbo v2, "sf_team_join_from_oob_link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 2787
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_JOIN_FROM_OOB_LINK:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2789
    :cond_9d
    const-string/jumbo v2, "sf_team_uninvite"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 2790
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SF_TEAM_UNINVITE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2792
    :cond_9e
    const-string/jumbo v2, "shared_content_add_invitees"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2793
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_INVITEES:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2795
    :cond_9f
    const-string/jumbo v2, "shared_content_add_link_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 2796
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2798
    :cond_a0
    const-string/jumbo v2, "shared_content_add_link_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2799
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2801
    :cond_a1
    const-string/jumbo v2, "shared_content_add_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 2802
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_ADD_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2804
    :cond_a2
    const-string/jumbo v2, "shared_content_change_downloads_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a3

    .line 2805
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_DOWNLOADS_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2807
    :cond_a3
    const-string/jumbo v2, "shared_content_change_invitee_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 2808
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_INVITEE_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2810
    :cond_a4
    const-string/jumbo v2, "shared_content_change_link_audience"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 2811
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_AUDIENCE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2813
    :cond_a5
    const-string/jumbo v2, "shared_content_change_link_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 2814
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2816
    :cond_a6
    const-string/jumbo v2, "shared_content_change_link_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a7

    .line 2817
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2819
    :cond_a7
    const-string/jumbo v2, "shared_content_change_member_role"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 2820
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_MEMBER_ROLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2822
    :cond_a8
    const-string/jumbo v2, "shared_content_change_viewer_info_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 2823
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CHANGE_VIEWER_INFO_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2825
    :cond_a9
    const-string/jumbo v2, "shared_content_claim_invitation"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 2826
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_CLAIM_INVITATION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2828
    :cond_aa
    const-string/jumbo v2, "shared_content_copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 2829
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2831
    :cond_ab
    const-string/jumbo v2, "shared_content_download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ac

    .line 2832
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2834
    :cond_ac
    const-string/jumbo v2, "shared_content_relinquish_membership"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 2835
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_RELINQUISH_MEMBERSHIP:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2837
    :cond_ad
    const-string/jumbo v2, "shared_content_remove_invitee"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 2838
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_INVITEE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2840
    :cond_ae
    const-string/jumbo v2, "shared_content_remove_link_expiry"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 2841
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_LINK_EXPIRY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2843
    :cond_af
    const-string/jumbo v2, "shared_content_remove_link_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 2844
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_LINK_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2846
    :cond_b0
    const-string/jumbo v2, "shared_content_remove_member"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 2847
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REMOVE_MEMBER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2849
    :cond_b1
    const-string/jumbo v2, "shared_content_request_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2850
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_REQUEST_ACCESS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2852
    :cond_b2
    const-string/jumbo v2, "shared_content_unshare"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 2853
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_UNSHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2855
    :cond_b3
    const-string/jumbo v2, "shared_content_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 2856
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_CONTENT_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2858
    :cond_b4
    const-string/jumbo v2, "shared_folder_change_confidentiality"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 2859
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_CONFIDENTIALITY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2861
    :cond_b5
    const-string/jumbo v2, "shared_folder_change_link_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    .line 2862
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2864
    :cond_b6
    const-string/jumbo v2, "shared_folder_change_member_management_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    .line 2865
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_MEMBER_MANAGEMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2867
    :cond_b7
    const-string/jumbo v2, "shared_folder_change_member_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 2868
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2870
    :cond_b8
    const-string/jumbo v2, "shared_folder_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 2871
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2873
    :cond_b9
    const-string/jumbo v2, "shared_folder_mount"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 2874
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_MOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2876
    :cond_ba
    const-string/jumbo v2, "shared_folder_transfer_ownership"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 2877
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2879
    :cond_bb
    const-string/jumbo v2, "shared_folder_unmount"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bc

    .line 2880
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_FOLDER_UNMOUNT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2882
    :cond_bc
    const-string/jumbo v2, "shared_note_opened"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 2883
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARED_NOTE_OPENED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2885
    :cond_bd
    const-string/jumbo v2, "shmodel_app_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_be

    .line 2886
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_APP_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2888
    :cond_be
    const-string/jumbo v2, "shmodel_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 2889
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2891
    :cond_bf
    const-string/jumbo v2, "shmodel_disable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 2892
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_DISABLE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2894
    :cond_c0
    const-string/jumbo v2, "shmodel_fb_share"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c1

    .line 2895
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_FB_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2897
    :cond_c1
    const-string/jumbo v2, "shmodel_group_share"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 2898
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_GROUP_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2900
    :cond_c2
    const-string/jumbo v2, "shmodel_remove_expiration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 2901
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_REMOVE_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2903
    :cond_c3
    const-string/jumbo v2, "shmodel_set_expiration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 2904
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_SET_EXPIRATION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2906
    :cond_c4
    const-string/jumbo v2, "shmodel_team_copy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 2907
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_COPY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2909
    :cond_c5
    const-string/jumbo v2, "shmodel_team_download"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 2910
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_DOWNLOAD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2912
    :cond_c6
    const-string/jumbo v2, "shmodel_team_share"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 2913
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_SHARE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2915
    :cond_c7
    const-string/jumbo v2, "shmodel_team_view"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    .line 2916
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_TEAM_VIEW:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2918
    :cond_c8
    const-string/jumbo v2, "shmodel_visibility_password"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2919
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_PASSWORD:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2921
    :cond_c9
    const-string/jumbo v2, "shmodel_visibility_public"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 2922
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_PUBLIC:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2924
    :cond_ca
    const-string/jumbo v2, "shmodel_visibility_team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 2925
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHMODEL_VISIBILITY_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2927
    :cond_cb
    const-string/jumbo v2, "sso_add_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 2928
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2930
    :cond_cc
    const-string/jumbo v2, "sso_add_login_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 2931
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2933
    :cond_cd
    const-string/jumbo v2, "sso_add_logout_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 2934
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_ADD_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2936
    :cond_ce
    const-string/jumbo v2, "sso_change_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cf

    .line 2937
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2939
    :cond_cf
    const-string/jumbo v2, "sso_change_login_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 2940
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2942
    :cond_d0
    const-string/jumbo v2, "sso_change_logout_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 2943
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2945
    :cond_d1
    const-string/jumbo v2, "sso_change_saml_identity_mode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 2946
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_SAML_IDENTITY_MODE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2948
    :cond_d2
    const-string/jumbo v2, "sso_remove_cert"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 2949
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_CERT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2951
    :cond_d3
    const-string/jumbo v2, "sso_remove_login_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 2952
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_LOGIN_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2954
    :cond_d4
    const-string/jumbo v2, "sso_remove_logout_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 2955
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_REMOVE_LOGOUT_URL:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2957
    :cond_d5
    const-string/jumbo v2, "team_folder_change_status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 2958
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2960
    :cond_d6
    const-string/jumbo v2, "team_folder_create"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 2961
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_CREATE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2963
    :cond_d7
    const-string/jumbo v2, "team_folder_downgrade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 2964
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_DOWNGRADE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2966
    :cond_d8
    const-string/jumbo v2, "team_folder_permanently_delete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 2967
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_PERMANENTLY_DELETE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2969
    :cond_d9
    const-string/jumbo v2, "team_folder_rename"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 2970
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_FOLDER_RENAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2972
    :cond_da
    const-string/jumbo v2, "account_capture_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 2973
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ACCOUNT_CAPTURE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2975
    :cond_db
    const-string/jumbo v2, "allow_download_disabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dc

    .line 2976
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ALLOW_DOWNLOAD_DISABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2978
    :cond_dc
    const-string/jumbo v2, "allow_download_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 2979
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->ALLOW_DOWNLOAD_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2981
    :cond_dd
    const-string/jumbo v2, "data_placement_restriction_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 2982
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DATA_PLACEMENT_RESTRICTION_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2984
    :cond_de
    const-string/jumbo v2, "data_placement_restriction_satisfy_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 2985
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DATA_PLACEMENT_RESTRICTION_SATISFY_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2987
    :cond_df
    const-string/jumbo v2, "device_approvals_change_desktop_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 2988
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_DESKTOP_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2990
    :cond_e0
    const-string/jumbo v2, "device_approvals_change_mobile_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 2991
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_MOBILE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2993
    :cond_e1
    const-string/jumbo v2, "device_approvals_change_overage_action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 2994
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_OVERAGE_ACTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2996
    :cond_e2
    const-string/jumbo v2, "device_approvals_change_unlink_action"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 2997
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->DEVICE_APPROVALS_CHANGE_UNLINK_ACTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 2999
    :cond_e3
    const-string/jumbo v2, "emm_add_exception"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 3000
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3002
    :cond_e4
    const-string/jumbo v2, "emm_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 3003
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3005
    :cond_e5
    const-string/jumbo v2, "emm_remove_exception"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 3006
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EMM_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3008
    :cond_e6
    const-string/jumbo v2, "extended_version_history_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 3009
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->EXTENDED_VERSION_HISTORY_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3011
    :cond_e7
    const-string/jumbo v2, "file_comments_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 3012
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_COMMENTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3014
    :cond_e8
    const-string/jumbo v2, "file_requests_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 3015
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3017
    :cond_e9
    const-string/jumbo v2, "file_requests_emails_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 3018
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_EMAILS_ENABLED:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3020
    :cond_ea
    const-string/jumbo v2, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 3021
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->FILE_REQUESTS_EMAILS_RESTRICTED_TO_TEAM_ONLY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3023
    :cond_eb
    const-string/jumbo v2, "google_sso_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 3024
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GOOGLE_SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3026
    :cond_ec
    const-string/jumbo v2, "group_user_management_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 3027
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->GROUP_USER_MANAGEMENT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3029
    :cond_ed
    const-string/jumbo v2, "member_requests_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 3030
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_REQUESTS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3032
    :cond_ee
    const-string/jumbo v2, "member_space_limits_add_exception"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 3033
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_ADD_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3035
    :cond_ef
    const-string/jumbo v2, "member_space_limits_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    .line 3036
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3038
    :cond_f0
    const-string/jumbo v2, "member_space_limits_remove_exception"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 3039
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SPACE_LIMITS_REMOVE_EXCEPTION:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3041
    :cond_f1
    const-string/jumbo v2, "member_suggestions_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 3042
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MEMBER_SUGGESTIONS_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3044
    :cond_f2
    const-string/jumbo v2, "microsoft_office_addin_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    .line 3045
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->MICROSOFT_OFFICE_ADDIN_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3047
    :cond_f3
    const-string/jumbo v2, "network_control_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 3048
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->NETWORK_CONTROL_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3050
    :cond_f4
    const-string/jumbo v2, "paper_change_deployment_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 3051
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_DEPLOYMENT_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3053
    :cond_f5
    const-string/jumbo v2, "paper_change_member_link_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 3054
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_MEMBER_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3056
    :cond_f6
    const-string/jumbo v2, "paper_change_member_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 3057
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3059
    :cond_f7
    const-string/jumbo v2, "paper_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 3060
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PAPER_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3062
    :cond_f8
    const-string/jumbo v2, "permanent_delete_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 3063
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->PERMANENT_DELETE_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3065
    :cond_f9
    const-string/jumbo v2, "sharing_change_folder_join_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 3066
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_FOLDER_JOIN_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3068
    :cond_fa
    const-string/jumbo v2, "sharing_change_link_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 3069
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_LINK_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3071
    :cond_fb
    const-string/jumbo v2, "sharing_change_member_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 3072
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SHARING_CHANGE_MEMBER_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3074
    :cond_fc
    const-string/jumbo v2, "smart_sync_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 3075
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3077
    :cond_fd
    const-string/jumbo v2, "smart_sync_not_opt_out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 3078
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_NOT_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3080
    :cond_fe
    const-string/jumbo v2, "smart_sync_opt_out"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 3081
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SMART_SYNC_OPT_OUT:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3083
    :cond_ff
    const-string/jumbo v2, "sso_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 3084
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->SSO_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3086
    :cond_100
    const-string/jumbo v2, "tfa_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 3087
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3089
    :cond_101
    const-string/jumbo v2, "two_account_change_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 3090
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TWO_ACCOUNT_CHANGE_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3092
    :cond_102
    const-string/jumbo v2, "web_sessions_change_fixed_length_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 3093
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->WEB_SESSIONS_CHANGE_FIXED_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3095
    :cond_103
    const-string/jumbo v2, "web_sessions_change_idle_length_policy"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    .line 3096
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->WEB_SESSIONS_CHANGE_IDLE_LENGTH_POLICY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3098
    :cond_104
    const-string/jumbo v2, "team_profile_add_logo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 3099
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_ADD_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3101
    :cond_105
    const-string/jumbo v2, "team_profile_change_default_language"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 3102
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_DEFAULT_LANGUAGE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3104
    :cond_106
    const-string/jumbo v2, "team_profile_change_logo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_107

    .line 3105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3107
    :cond_107
    const-string/jumbo v2, "team_profile_change_name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 3108
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_CHANGE_NAME:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3110
    :cond_108
    const-string/jumbo v2, "team_profile_remove_logo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_109

    .line 3111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TEAM_PROFILE_REMOVE_LOGO:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3113
    :cond_109
    const-string/jumbo v2, "tfa_add_backup_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10a

    .line 3114
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_ADD_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3116
    :cond_10a
    const-string/jumbo v2, "tfa_add_security_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10b

    .line 3117
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_ADD_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3119
    :cond_10b
    const-string/jumbo v2, "tfa_change_backup_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    .line 3120
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3122
    :cond_10c
    const-string/jumbo v2, "tfa_change_status"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 3123
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_CHANGE_STATUS:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3125
    :cond_10d
    const-string/jumbo v2, "tfa_remove_backup_phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 3126
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_REMOVE_BACKUP_PHONE:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3128
    :cond_10e
    const-string/jumbo v2, "tfa_remove_security_key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 3129
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_REMOVE_SECURITY_KEY:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3131
    :cond_10f
    const-string/jumbo v2, "tfa_reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 3132
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->TFA_RESET:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1

    .line 3135
    :cond_110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType;->OTHER:Lcom/dropbox/core/v2/teamlog/EventType;

    goto/16 :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/d/a/a/k;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventType;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1219
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventType$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventType:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2301
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 2304
    :goto_0
    return-void

    .line 1221
    :pswitch_0
    const-string/jumbo v0, "member_change_membership_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :pswitch_1
    const-string/jumbo v0, "member_permanently_delete_account_contents"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :pswitch_2
    const-string/jumbo v0, "member_space_limits_change_status"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1233
    :pswitch_3
    const-string/jumbo v0, "member_transfer_account_contents"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1237
    :pswitch_4
    const-string/jumbo v0, "paper_admin_export_start"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    :pswitch_5
    const-string/jumbo v0, "paper_enabled_users_group_addition"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1245
    :pswitch_6
    const-string/jumbo v0, "paper_enabled_users_group_removal"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1249
    :pswitch_7
    const-string/jumbo v0, "paper_external_view_allow"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1253
    :pswitch_8
    const-string/jumbo v0, "paper_external_view_default_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :pswitch_9
    const-string/jumbo v0, "paper_external_view_forbid"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1261
    :pswitch_a
    const-string/jumbo v0, "sf_external_invite_warn"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1265
    :pswitch_b
    const-string/jumbo v0, "team_merge_from"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1269
    :pswitch_c
    const-string/jumbo v0, "team_merge_to"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1273
    :pswitch_d
    const-string/jumbo v0, "app_link_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1277
    :pswitch_e
    const-string/jumbo v0, "app_link_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1281
    :pswitch_f
    const-string/jumbo v0, "app_unlink_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1285
    :pswitch_10
    const-string/jumbo v0, "app_unlink_user"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :pswitch_11
    const-string/jumbo v0, "file_add_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    :pswitch_12
    const-string/jumbo v0, "file_change_comment_subscription"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1297
    :pswitch_13
    const-string/jumbo v0, "file_delete_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1301
    :pswitch_14
    const-string/jumbo v0, "file_like_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    :pswitch_15
    const-string/jumbo v0, "file_resolve_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1309
    :pswitch_16
    const-string/jumbo v0, "file_unlike_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1313
    :pswitch_17
    const-string/jumbo v0, "file_unresolve_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1317
    :pswitch_18
    const-string/jumbo v0, "device_change_ip_desktop"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1321
    :pswitch_19
    const-string/jumbo v0, "device_change_ip_mobile"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1325
    :pswitch_1a
    const-string/jumbo v0, "device_change_ip_web"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1329
    :pswitch_1b
    const-string/jumbo v0, "device_delete_on_unlink_fail"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1333
    :pswitch_1c
    const-string/jumbo v0, "device_delete_on_unlink_success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1337
    :pswitch_1d
    const-string/jumbo v0, "device_link_fail"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1341
    :pswitch_1e
    const-string/jumbo v0, "device_link_success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1345
    :pswitch_1f
    const-string/jumbo v0, "device_management_disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1349
    :pswitch_20
    const-string/jumbo v0, "device_management_enabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1353
    :pswitch_21
    const-string/jumbo v0, "device_unlink"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1357
    :pswitch_22
    const-string/jumbo v0, "emm_refresh_auth_token"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1361
    :pswitch_23
    const-string/jumbo v0, "account_capture_change_availability"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1365
    :pswitch_24
    const-string/jumbo v0, "account_capture_migrate_account"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1369
    :pswitch_25
    const-string/jumbo v0, "account_capture_relinquish_account"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1373
    :pswitch_26
    const-string/jumbo v0, "disabled_domain_invites"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    :pswitch_27
    const-string/jumbo v0, "domain_invites_approve_request_to_join_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1381
    :pswitch_28
    const-string/jumbo v0, "domain_invites_decline_request_to_join_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :pswitch_29
    const-string/jumbo v0, "domain_invites_email_existing_users"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :pswitch_2a
    const-string/jumbo v0, "domain_invites_request_to_join_team"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1393
    :pswitch_2b
    const-string/jumbo v0, "domain_invites_set_invite_new_user_pref_to_no"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1397
    :pswitch_2c
    const-string/jumbo v0, "domain_invites_set_invite_new_user_pref_to_yes"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :pswitch_2d
    const-string/jumbo v0, "domain_verification_add_domain_fail"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1405
    :pswitch_2e
    const-string/jumbo v0, "domain_verification_add_domain_success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1409
    :pswitch_2f
    const-string/jumbo v0, "domain_verification_remove_domain"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    :pswitch_30
    const-string/jumbo v0, "enabled_domain_invites"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1417
    :pswitch_31
    const-string/jumbo v0, "create_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1421
    :pswitch_32
    const-string/jumbo v0, "file_add"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1425
    :pswitch_33
    const-string/jumbo v0, "file_copy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :pswitch_34
    const-string/jumbo v0, "file_delete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1433
    :pswitch_35
    const-string/jumbo v0, "file_download"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1437
    :pswitch_36
    const-string/jumbo v0, "file_edit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1441
    :pswitch_37
    const-string/jumbo v0, "file_get_copy_reference"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1445
    :pswitch_38
    const-string/jumbo v0, "file_move"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1449
    :pswitch_39
    const-string/jumbo v0, "file_permanently_delete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1453
    :pswitch_3a
    const-string/jumbo v0, "file_preview"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1457
    :pswitch_3b
    const-string/jumbo v0, "file_rename"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1461
    :pswitch_3c
    const-string/jumbo v0, "file_restore"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    :pswitch_3d
    const-string/jumbo v0, "file_revert"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1469
    :pswitch_3e
    const-string/jumbo v0, "file_rollback_changes"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1473
    :pswitch_3f
    const-string/jumbo v0, "file_save_copy_reference"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1477
    :pswitch_40
    const-string/jumbo v0, "file_request_add_deadline"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1481
    :pswitch_41
    const-string/jumbo v0, "file_request_change_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1485
    :pswitch_42
    const-string/jumbo v0, "file_request_change_title"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1489
    :pswitch_43
    const-string/jumbo v0, "file_request_close"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1493
    :pswitch_44
    const-string/jumbo v0, "file_request_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1497
    :pswitch_45
    const-string/jumbo v0, "file_request_receive_file"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1501
    :pswitch_46
    const-string/jumbo v0, "file_request_remove_deadline"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1505
    :pswitch_47
    const-string/jumbo v0, "file_request_send"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1509
    :pswitch_48
    const-string/jumbo v0, "group_add_external_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1513
    :pswitch_49
    const-string/jumbo v0, "group_add_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1517
    :pswitch_4a
    const-string/jumbo v0, "group_change_external_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1521
    :pswitch_4b
    const-string/jumbo v0, "group_change_management_type"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1525
    :pswitch_4c
    const-string/jumbo v0, "group_change_member_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1529
    :pswitch_4d
    const-string/jumbo v0, "group_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1533
    :pswitch_4e
    const-string/jumbo v0, "group_delete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1537
    :pswitch_4f
    const-string/jumbo v0, "group_moved"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1541
    :pswitch_50
    const-string/jumbo v0, "group_remove_external_id"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1545
    :pswitch_51
    const-string/jumbo v0, "group_remove_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    :pswitch_52
    const-string/jumbo v0, "group_rename"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1553
    :pswitch_53
    const-string/jumbo v0, "emm_login_success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1557
    :pswitch_54
    const-string/jumbo v0, "logout"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1561
    :pswitch_55
    const-string/jumbo v0, "password_login_fail"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1565
    :pswitch_56
    const-string/jumbo v0, "password_login_success"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1569
    :pswitch_57
    const-string/jumbo v0, "reseller_support_session_end"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1573
    :pswitch_58
    const-string/jumbo v0, "reseller_support_session_start"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1577
    :pswitch_59
    const-string/jumbo v0, "sign_in_as_session_end"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1581
    :pswitch_5a
    const-string/jumbo v0, "sign_in_as_session_start"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1585
    :pswitch_5b
    const-string/jumbo v0, "sso_login_fail"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1589
    :pswitch_5c
    const-string/jumbo v0, "member_add_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1593
    :pswitch_5d
    const-string/jumbo v0, "member_change_admin_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1597
    :pswitch_5e
    const-string/jumbo v0, "member_change_email"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1601
    :pswitch_5f
    const-string/jumbo v0, "member_change_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1605
    :pswitch_60
    const-string/jumbo v0, "member_change_status"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1609
    :pswitch_61
    const-string/jumbo v0, "member_suggest"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1613
    :pswitch_62
    const-string/jumbo v0, "paper_content_add_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1617
    :pswitch_63
    const-string/jumbo v0, "paper_content_add_to_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1621
    :pswitch_64
    const-string/jumbo v0, "paper_content_archive"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1625
    :pswitch_65
    const-string/jumbo v0, "paper_content_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1629
    :pswitch_66
    const-string/jumbo v0, "paper_content_permanently_delete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1633
    :pswitch_67
    const-string/jumbo v0, "paper_content_remove_from_folder"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1637
    :pswitch_68
    const-string/jumbo v0, "paper_content_remove_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1641
    :pswitch_69
    const-string/jumbo v0, "paper_content_rename"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1645
    :pswitch_6a
    const-string/jumbo v0, "paper_content_restore"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1649
    :pswitch_6b
    const-string/jumbo v0, "paper_doc_add_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1653
    :pswitch_6c
    const-string/jumbo v0, "paper_doc_change_member_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1657
    :pswitch_6d
    const-string/jumbo v0, "paper_doc_change_sharing_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1661
    :pswitch_6e
    const-string/jumbo v0, "paper_doc_change_subscription"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1665
    :pswitch_6f
    const-string/jumbo v0, "paper_doc_deleted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1669
    :pswitch_70
    const-string/jumbo v0, "paper_doc_delete_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1673
    :pswitch_71
    const-string/jumbo v0, "paper_doc_download"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    :pswitch_72
    const-string/jumbo v0, "paper_doc_edit"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1681
    :pswitch_73
    const-string/jumbo v0, "paper_doc_edit_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1685
    :pswitch_74
    const-string/jumbo v0, "paper_doc_followed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1689
    :pswitch_75
    const-string/jumbo v0, "paper_doc_mention"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1693
    :pswitch_76
    const-string/jumbo v0, "paper_doc_request_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1697
    :pswitch_77
    const-string/jumbo v0, "paper_doc_resolve_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1701
    :pswitch_78
    const-string/jumbo v0, "paper_doc_revert"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1705
    :pswitch_79
    const-string/jumbo v0, "paper_doc_slack_share"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1709
    :pswitch_7a
    const-string/jumbo v0, "paper_doc_team_invite"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1713
    :pswitch_7b
    const-string/jumbo v0, "paper_doc_trashed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1717
    :pswitch_7c
    const-string/jumbo v0, "paper_doc_unresolve_comment"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_7d
    const-string/jumbo v0, "paper_doc_untrashed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1725
    :pswitch_7e
    const-string/jumbo v0, "paper_doc_view"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1729
    :pswitch_7f
    const-string/jumbo v0, "paper_folder_change_subscription"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1733
    :pswitch_80
    const-string/jumbo v0, "paper_folder_deleted"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1737
    :pswitch_81
    const-string/jumbo v0, "paper_folder_followed"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1741
    :pswitch_82
    const-string/jumbo v0, "paper_folder_team_invite"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1745
    :pswitch_83
    const-string/jumbo v0, "password_change"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1749
    :pswitch_84
    const-string/jumbo v0, "password_reset"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1753
    :pswitch_85
    const-string/jumbo v0, "password_reset_all"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1757
    :pswitch_86
    const-string/jumbo v0, "emm_create_exceptions_report"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1761
    :pswitch_87
    const-string/jumbo v0, "emm_create_usage_report"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1765
    :pswitch_88
    const-string/jumbo v0, "smart_sync_create_admin_privilege_report"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1769
    :pswitch_89
    const-string/jumbo v0, "team_activity_create_report"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1773
    :pswitch_8a
    const-string/jumbo v0, "collection_share"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1777
    :pswitch_8b
    const-string/jumbo v0, "note_acl_invite_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1781
    :pswitch_8c
    const-string/jumbo v0, "note_acl_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1785
    :pswitch_8d
    const-string/jumbo v0, "note_acl_team_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1789
    :pswitch_8e
    const-string/jumbo v0, "note_shared"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1793
    :pswitch_8f
    const-string/jumbo v0, "note_share_receive"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1797
    :pswitch_90
    const-string/jumbo v0, "open_note_shared"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1801
    :pswitch_91
    const-string/jumbo v0, "sf_add_group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1805
    :pswitch_92
    const-string/jumbo v0, "sf_allow_non_members_to_view_shared_links"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1809
    :pswitch_93
    const-string/jumbo v0, "sf_invite_group"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1813
    :pswitch_94
    const-string/jumbo v0, "sf_nest"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1817
    :pswitch_95
    const-string/jumbo v0, "sf_team_decline"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1821
    :pswitch_96
    const-string/jumbo v0, "sf_team_grant_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1825
    :pswitch_97
    const-string/jumbo v0, "sf_team_invite"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1829
    :pswitch_98
    const-string/jumbo v0, "sf_team_invite_change_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1833
    :pswitch_99
    const-string/jumbo v0, "sf_team_join"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1837
    :pswitch_9a
    const-string/jumbo v0, "sf_team_join_from_oob_link"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1841
    :pswitch_9b
    const-string/jumbo v0, "sf_team_uninvite"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1845
    :pswitch_9c
    const-string/jumbo v0, "shared_content_add_invitees"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1849
    :pswitch_9d
    const-string/jumbo v0, "shared_content_add_link_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1853
    :pswitch_9e
    const-string/jumbo v0, "shared_content_add_link_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1857
    :pswitch_9f
    const-string/jumbo v0, "shared_content_add_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1861
    :pswitch_a0
    const-string/jumbo v0, "shared_content_change_downloads_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1865
    :pswitch_a1
    const-string/jumbo v0, "shared_content_change_invitee_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1869
    :pswitch_a2
    const-string/jumbo v0, "shared_content_change_link_audience"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1873
    :pswitch_a3
    const-string/jumbo v0, "shared_content_change_link_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1877
    :pswitch_a4
    const-string/jumbo v0, "shared_content_change_link_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1881
    :pswitch_a5
    const-string/jumbo v0, "shared_content_change_member_role"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1885
    :pswitch_a6
    const-string/jumbo v0, "shared_content_change_viewer_info_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1889
    :pswitch_a7
    const-string/jumbo v0, "shared_content_claim_invitation"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1893
    :pswitch_a8
    const-string/jumbo v0, "shared_content_copy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1897
    :pswitch_a9
    const-string/jumbo v0, "shared_content_download"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1901
    :pswitch_aa
    const-string/jumbo v0, "shared_content_relinquish_membership"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1905
    :pswitch_ab
    const-string/jumbo v0, "shared_content_remove_invitee"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1909
    :pswitch_ac
    const-string/jumbo v0, "shared_content_remove_link_expiry"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1913
    :pswitch_ad
    const-string/jumbo v0, "shared_content_remove_link_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1917
    :pswitch_ae
    const-string/jumbo v0, "shared_content_remove_member"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1921
    :pswitch_af
    const-string/jumbo v0, "shared_content_request_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1925
    :pswitch_b0
    const-string/jumbo v0, "shared_content_unshare"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1929
    :pswitch_b1
    const-string/jumbo v0, "shared_content_view"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1933
    :pswitch_b2
    const-string/jumbo v0, "shared_folder_change_confidentiality"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1937
    :pswitch_b3
    const-string/jumbo v0, "shared_folder_change_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1941
    :pswitch_b4
    const-string/jumbo v0, "shared_folder_change_member_management_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1945
    :pswitch_b5
    const-string/jumbo v0, "shared_folder_change_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1949
    :pswitch_b6
    const-string/jumbo v0, "shared_folder_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1953
    :pswitch_b7
    const-string/jumbo v0, "shared_folder_mount"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1957
    :pswitch_b8
    const-string/jumbo v0, "shared_folder_transfer_ownership"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1961
    :pswitch_b9
    const-string/jumbo v0, "shared_folder_unmount"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1965
    :pswitch_ba
    const-string/jumbo v0, "shared_note_opened"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1969
    :pswitch_bb
    const-string/jumbo v0, "shmodel_app_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1973
    :pswitch_bc
    const-string/jumbo v0, "shmodel_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1977
    :pswitch_bd
    const-string/jumbo v0, "shmodel_disable"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1981
    :pswitch_be
    const-string/jumbo v0, "shmodel_fb_share"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1985
    :pswitch_bf
    const-string/jumbo v0, "shmodel_group_share"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1989
    :pswitch_c0
    const-string/jumbo v0, "shmodel_remove_expiration"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1993
    :pswitch_c1
    const-string/jumbo v0, "shmodel_set_expiration"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1997
    :pswitch_c2
    const-string/jumbo v0, "shmodel_team_copy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2001
    :pswitch_c3
    const-string/jumbo v0, "shmodel_team_download"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2005
    :pswitch_c4
    const-string/jumbo v0, "shmodel_team_share"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2009
    :pswitch_c5
    const-string/jumbo v0, "shmodel_team_view"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2013
    :pswitch_c6
    const-string/jumbo v0, "shmodel_visibility_password"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2017
    :pswitch_c7
    const-string/jumbo v0, "shmodel_visibility_public"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2021
    :pswitch_c8
    const-string/jumbo v0, "shmodel_visibility_team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2025
    :pswitch_c9
    const-string/jumbo v0, "sso_add_cert"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2029
    :pswitch_ca
    const-string/jumbo v0, "sso_add_login_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2033
    :pswitch_cb
    const-string/jumbo v0, "sso_add_logout_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    :pswitch_cc
    const-string/jumbo v0, "sso_change_cert"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2041
    :pswitch_cd
    const-string/jumbo v0, "sso_change_login_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2045
    :pswitch_ce
    const-string/jumbo v0, "sso_change_logout_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2049
    :pswitch_cf
    const-string/jumbo v0, "sso_change_saml_identity_mode"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2053
    :pswitch_d0
    const-string/jumbo v0, "sso_remove_cert"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2057
    :pswitch_d1
    const-string/jumbo v0, "sso_remove_login_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2061
    :pswitch_d2
    const-string/jumbo v0, "sso_remove_logout_url"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2065
    :pswitch_d3
    const-string/jumbo v0, "team_folder_change_status"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2069
    :pswitch_d4
    const-string/jumbo v0, "team_folder_create"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2073
    :pswitch_d5
    const-string/jumbo v0, "team_folder_downgrade"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2077
    :pswitch_d6
    const-string/jumbo v0, "team_folder_permanently_delete"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2081
    :pswitch_d7
    const-string/jumbo v0, "team_folder_rename"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2085
    :pswitch_d8
    const-string/jumbo v0, "account_capture_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2089
    :pswitch_d9
    const-string/jumbo v0, "allow_download_disabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2093
    :pswitch_da
    const-string/jumbo v0, "allow_download_enabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2097
    :pswitch_db
    const-string/jumbo v0, "data_placement_restriction_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2101
    :pswitch_dc
    const-string/jumbo v0, "data_placement_restriction_satisfy_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2105
    :pswitch_dd
    const-string/jumbo v0, "device_approvals_change_desktop_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2109
    :pswitch_de
    const-string/jumbo v0, "device_approvals_change_mobile_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2113
    :pswitch_df
    const-string/jumbo v0, "device_approvals_change_overage_action"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2117
    :pswitch_e0
    const-string/jumbo v0, "device_approvals_change_unlink_action"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2121
    :pswitch_e1
    const-string/jumbo v0, "emm_add_exception"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2125
    :pswitch_e2
    const-string/jumbo v0, "emm_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2129
    :pswitch_e3
    const-string/jumbo v0, "emm_remove_exception"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2133
    :pswitch_e4
    const-string/jumbo v0, "extended_version_history_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2137
    :pswitch_e5
    const-string/jumbo v0, "file_comments_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2141
    :pswitch_e6
    const-string/jumbo v0, "file_requests_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2145
    :pswitch_e7
    const-string/jumbo v0, "file_requests_emails_enabled"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2149
    :pswitch_e8
    const-string/jumbo v0, "file_requests_emails_restricted_to_team_only"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2153
    :pswitch_e9
    const-string/jumbo v0, "google_sso_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2157
    :pswitch_ea
    const-string/jumbo v0, "group_user_management_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2161
    :pswitch_eb
    const-string/jumbo v0, "member_requests_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2165
    :pswitch_ec
    const-string/jumbo v0, "member_space_limits_add_exception"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2169
    :pswitch_ed
    const-string/jumbo v0, "member_space_limits_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2173
    :pswitch_ee
    const-string/jumbo v0, "member_space_limits_remove_exception"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2177
    :pswitch_ef
    const-string/jumbo v0, "member_suggestions_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2181
    :pswitch_f0
    const-string/jumbo v0, "microsoft_office_addin_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2185
    :pswitch_f1
    const-string/jumbo v0, "network_control_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2189
    :pswitch_f2
    const-string/jumbo v0, "paper_change_deployment_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2193
    :pswitch_f3
    const-string/jumbo v0, "paper_change_member_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2197
    :pswitch_f4
    const-string/jumbo v0, "paper_change_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2201
    :pswitch_f5
    const-string/jumbo v0, "paper_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2205
    :pswitch_f6
    const-string/jumbo v0, "permanent_delete_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2209
    :pswitch_f7
    const-string/jumbo v0, "sharing_change_folder_join_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2213
    :pswitch_f8
    const-string/jumbo v0, "sharing_change_link_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2217
    :pswitch_f9
    const-string/jumbo v0, "sharing_change_member_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2221
    :pswitch_fa
    const-string/jumbo v0, "smart_sync_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2225
    :pswitch_fb
    const-string/jumbo v0, "smart_sync_not_opt_out"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2229
    :pswitch_fc
    const-string/jumbo v0, "smart_sync_opt_out"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2233
    :pswitch_fd
    const-string/jumbo v0, "sso_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2237
    :pswitch_fe
    const-string/jumbo v0, "tfa_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2241
    :pswitch_ff
    const-string/jumbo v0, "two_account_change_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2245
    :pswitch_100
    const-string/jumbo v0, "web_sessions_change_fixed_length_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2249
    :pswitch_101
    const-string/jumbo v0, "web_sessions_change_idle_length_policy"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2253
    :pswitch_102
    const-string/jumbo v0, "team_profile_add_logo"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2257
    :pswitch_103
    const-string/jumbo v0, "team_profile_change_default_language"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2261
    :pswitch_104
    const-string/jumbo v0, "team_profile_change_logo"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2265
    :pswitch_105
    const-string/jumbo v0, "team_profile_change_name"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2269
    :pswitch_106
    const-string/jumbo v0, "team_profile_remove_logo"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2273
    :pswitch_107
    const-string/jumbo v0, "tfa_add_backup_phone"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2277
    :pswitch_108
    const-string/jumbo v0, "tfa_add_security_key"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2281
    :pswitch_109
    const-string/jumbo v0, "tfa_change_backup_phone"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2285
    :pswitch_10a
    const-string/jumbo v0, "tfa_change_status"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2289
    :pswitch_10b
    const-string/jumbo v0, "tfa_remove_backup_phone"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2293
    :pswitch_10c
    const-string/jumbo v0, "tfa_remove_security_key"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2297
    :pswitch_10d
    const-string/jumbo v0, "tfa_reset"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_9c
        :pswitch_9d
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_b0
        :pswitch_b1
        :pswitch_b2
        :pswitch_b3
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_b7
        :pswitch_b8
        :pswitch_b9
        :pswitch_ba
        :pswitch_bb
        :pswitch_bc
        :pswitch_bd
        :pswitch_be
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_c2
        :pswitch_c3
        :pswitch_c4
        :pswitch_c5
        :pswitch_c6
        :pswitch_c7
        :pswitch_c8
        :pswitch_c9
        :pswitch_ca
        :pswitch_cb
        :pswitch_cc
        :pswitch_cd
        :pswitch_ce
        :pswitch_cf
        :pswitch_d0
        :pswitch_d1
        :pswitch_d2
        :pswitch_d3
        :pswitch_d4
        :pswitch_d5
        :pswitch_d6
        :pswitch_d7
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_dc
        :pswitch_dd
        :pswitch_de
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_e3
        :pswitch_e4
        :pswitch_e5
        :pswitch_e6
        :pswitch_e7
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_f0
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_f5
        :pswitch_f6
        :pswitch_f7
        :pswitch_f8
        :pswitch_f9
        :pswitch_fa
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_fe
        :pswitch_ff
        :pswitch_100
        :pswitch_101
        :pswitch_102
        :pswitch_103
        :pswitch_104
        :pswitch_105
        :pswitch_106
        :pswitch_107
        :pswitch_108
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/d/a/a/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 1214
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventType;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventType$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventType;Lcom/d/a/a/g;)V

    return-void
.end method
