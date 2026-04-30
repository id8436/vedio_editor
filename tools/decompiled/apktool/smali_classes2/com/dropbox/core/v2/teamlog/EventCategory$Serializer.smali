.class Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "EventCategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/j;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/d/a/a/k;->c()Lcom/d/a/a/o;

    move-result-object v0

    sget-object v1, Lcom/d/a/a/o;->h:Lcom/d/a/a/o;

    if-ne v0, v1, :cond_0

    .line 314
    const/4 v1, 0x1

    .line 315
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->getStringValue(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Lcom/d/a/a/k;->a()Lcom/d/a/a/o;

    .line 323
    :goto_0
    if-nez v0, :cond_1

    .line 324
    new-instance v0, Lcom/d/a/a/j;

    const-string/jumbo v1, "Required field missing: .tag"

    invoke-direct {v0, p1, v1}, Lcom/d/a/a/j;-><init>(Lcom/d/a/a/k;Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 320
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->expectStartObject(Lcom/d/a/a/k;)V

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->readTag(Lcom/d/a/a/k;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_1
    const-string/jumbo v2, "account_capture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 422
    :goto_1
    if-nez v1, :cond_2

    .line 423
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->skipFields(Lcom/d/a/a/k;)V

    .line 424
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->expectEndObject(Lcom/d/a/a/k;)V

    .line 426
    :cond_2
    return-object v0

    .line 329
    :cond_3
    const-string/jumbo v2, "administration"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 332
    :cond_4
    const-string/jumbo v2, "apps"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 333
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 335
    :cond_5
    const-string/jumbo v2, "authentication"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 336
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 338
    :cond_6
    const-string/jumbo v2, "comments"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 339
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 341
    :cond_7
    const-string/jumbo v2, "content_access"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 342
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 344
    :cond_8
    const-string/jumbo v2, "devices"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 345
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 347
    :cond_9
    const-string/jumbo v2, "device_approvals"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 348
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 350
    :cond_a
    const-string/jumbo v2, "domains"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 351
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 353
    :cond_b
    const-string/jumbo v2, "emm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 354
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 356
    :cond_c
    const-string/jumbo v2, "errors"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 357
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto :goto_1

    .line 359
    :cond_d
    const-string/jumbo v2, "files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 360
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 362
    :cond_e
    const-string/jumbo v2, "file_operations"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 363
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 365
    :cond_f
    const-string/jumbo v2, "file_requests"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 366
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 368
    :cond_10
    const-string/jumbo v2, "groups"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 369
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 371
    :cond_11
    const-string/jumbo v2, "logins"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 372
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 374
    :cond_12
    const-string/jumbo v2, "members"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 375
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 377
    :cond_13
    const-string/jumbo v2, "paper"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 378
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 380
    :cond_14
    const-string/jumbo v2, "passwords"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 381
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 383
    :cond_15
    const-string/jumbo v2, "reports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 384
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 386
    :cond_16
    const-string/jumbo v2, "sessions"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 387
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 389
    :cond_17
    const-string/jumbo v2, "shared_files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 390
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 392
    :cond_18
    const-string/jumbo v2, "shared_folders"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 393
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 395
    :cond_19
    const-string/jumbo v2, "shared_links"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 396
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 398
    :cond_1a
    const-string/jumbo v2, "sharing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 399
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 401
    :cond_1b
    const-string/jumbo v2, "sharing_policies"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 402
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 404
    :cond_1c
    const-string/jumbo v2, "sso"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 405
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 407
    :cond_1d
    const-string/jumbo v2, "team_folders"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 408
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 410
    :cond_1e
    const-string/jumbo v2, "team_policies"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 411
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 413
    :cond_1f
    const-string/jumbo v2, "team_profile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 414
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 416
    :cond_20
    const-string/jumbo v2, "tfa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 417
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    goto/16 :goto_1

    .line 420
    :cond_21
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

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
    .line 172
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->deserialize(Lcom/d/a/a/k;)Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/d/a/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/d/a/a/f;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string/jumbo v0, "other"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const-string/jumbo v0, "account_capture"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    const-string/jumbo v0, "administration"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_2
    const-string/jumbo v0, "apps"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    const-string/jumbo v0, "authentication"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_4
    const-string/jumbo v0, "comments"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_5
    const-string/jumbo v0, "content_access"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_6
    const-string/jumbo v0, "devices"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_7
    const-string/jumbo v0, "device_approvals"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_8
    const-string/jumbo v0, "domains"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_9
    const-string/jumbo v0, "emm"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_a
    const-string/jumbo v0, "errors"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_b
    const-string/jumbo v0, "files"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_c
    const-string/jumbo v0, "file_operations"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_d
    const-string/jumbo v0, "file_requests"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_e
    const-string/jumbo v0, "groups"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_f
    const-string/jumbo v0, "logins"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_10
    const-string/jumbo v0, "members"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_11
    const-string/jumbo v0, "paper"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_12
    const-string/jumbo v0, "passwords"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :pswitch_13
    const-string/jumbo v0, "reports"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :pswitch_14
    const-string/jumbo v0, "sessions"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_15
    const-string/jumbo v0, "shared_files"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_16
    const-string/jumbo v0, "shared_folders"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_17
    const-string/jumbo v0, "shared_links"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_18
    const-string/jumbo v0, "sharing"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_19
    const-string/jumbo v0, "sharing_policies"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_1a
    const-string/jumbo v0, "sso"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :pswitch_1b
    const-string/jumbo v0, "team_folders"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :pswitch_1c
    const-string/jumbo v0, "team_policies"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :pswitch_1d
    const-string/jumbo v0, "team_profile"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_1e
    const-string/jumbo v0, "tfa"

    invoke-virtual {p2, v0}, Lcom/d/a/a/g;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
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
    .line 172
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/d/a/a/g;)V

    return-void
.end method
