.class public Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;
.super Ljava/lang/Object;
.source "ADBMAnalyticsHelper.java"


# static fields
.field static sUserId:Ljava/lang/String;

.field static sUserLoggedIn:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserLoggedIn:Ljava/lang/Boolean;

    .line 33
    const-string/jumbo v0, ""

    sput-object v0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStorycardClipTapped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 169
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 170
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 171
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 172
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "AddStorycardClipTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 176
    return-void
.end method

.method public static addStorycardDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 182
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 183
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 184
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v1, "AddStorycardDialogFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 189
    return-void
.end method

.method public static cameraImportTapped(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "cameraImportTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 289
    return-void
.end method

.method public static clipStoryCardMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 368
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 369
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 370
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 371
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "ClipStoryCardMenuTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 376
    return-void
.end method

.method public static clipTitleDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 353
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 354
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 355
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 356
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v1, "ClipTitleDialogFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 362
    return-void
.end method

.method public static clipTitleMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 339
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 340
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 341
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 342
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v1, "ClipTitleMenuTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 348
    return-void
.end method

.method public static clipVoiceoverDialogFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 395
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 396
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 397
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 398
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 399
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v1, "ClipVoiceoverDialogFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 404
    return-void
.end method

.method public static clipVoiceoverMenuTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 381
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 382
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 383
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 384
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 385
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string/jumbo v1, "ClipVoiceoverMenuTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 390
    return-void
.end method

.method public static creativeCloudFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 269
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 270
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 271
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 272
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "CreativeCloudFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 279
    return-void
.end method

.method public static creativeCloudImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 254
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 255
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 256
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 257
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 258
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v1, "CreativeCloudImportTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    return-void
.end method

.method static debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static dropboxFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 209
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 210
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 211
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 212
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v1, "DropboxFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    return-void
.end method

.method public static dropboxImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 194
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 195
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 196
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 197
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v1, "DropboxImportTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    return-void
.end method

.method public static goProThumbsLoaded(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 294
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 295
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v1, "goProThumbsLoaded"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    return-void
.end method

.method public static goProTransferAttempted(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 306
    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    const-string/jumbo v2, "%d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 310
    const-string/jumbo v2, "uuid"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    const-string/jumbo v2, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v2, "clipDimensions"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v0, "clipFramerate"

    const-string/jumbo v2, "frameRate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v0, "clipDuration"

    const-string/jumbo v2, "duration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "goProTransferAttempted"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 317
    return-void
.end method

.method public static goProTransferSucceeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 323
    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    const-string/jumbo v2, "%d x %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    const-string/jumbo v2, "uuid"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v2, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v2, "clipDimensions"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v0, "clipFramerate"

    const-string/jumbo v2, "frameRate"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v0, "clipDuration"

    const-string/jumbo v2, "duration"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string/jumbo v0, "goProTransferSucceeded"

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 334
    return-void
.end method

.method public static googleDriveFeedbackTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 239
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 240
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 241
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 242
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string/jumbo v1, "GoogleDriveFeedbackTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method public static googleDriveImportTapped(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    if-nez p0, :cond_0

    const-string/jumbo p0, "nil"

    .line 225
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, "nil"

    .line 226
    :cond_1
    if-nez p2, :cond_2

    const-string/jumbo p2, "nil"

    .line 227
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    const-string/jumbo v1, "LoginStatus"

    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->userLoggedIn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string/jumbo v1, "title"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string/jumbo v1, "uuid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string/jumbo v1, "clipType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "GoogleDriveImportTapped"

    invoke-static {v1, v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string/jumbo v0, "ADBMAnalyticsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method static logError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string/jumbo v0, "ADBMAnalyticsHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/adobe/utility/analytics/TrackingUtility;->makeTargetRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/utility/analytics/TrackingUtility$TargetRequestCallback;)V

    .line 141
    return-void
.end method

.method public static setDebugLogging(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/utility/analytics/TrackingUtility;->setDebugLogging(Ljava/lang/Boolean;)V

    .line 61
    return-void
.end method

.method public static setPrivacyStatus(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/utility/analytics/TrackingUtility;->updateMobilePrivacyConfiguration(Ljava/lang/Boolean;)V

    .line 147
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/utility/analytics/TrackingUtility;->startTrackingLifecycleData()V

    .line 151
    :cond_0
    return-void
.end method

.method public static setUserIdentifier(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile setUserIdentifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->logDebug(Ljava/lang/String;)V

    .line 69
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/utility/analytics/TrackingUtility;->setUserIdentifier(Ljava/lang/String;)V

    .line 71
    sput-object p0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserId:Ljava/lang/String;

    .line 73
    :cond_1
    return-void
.end method

.method public static setUserLoggedIn(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 156
    sput-object p0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserLoggedIn:Ljava/lang/Boolean;

    .line 157
    return-void
.end method

.method public static trackAction(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile trackAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->logDebug(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility;->trackAction(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    return-void
.end method

.method public static trackState(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile trackState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->logDebug(Ljava/lang/String;)V

    .line 92
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility;->trackState(Ljava/lang/String;Ljava/util/Map;)V

    .line 93
    return-void
.end method

.method public static trackTimedActionEnd(Ljava/lang/String;Lcom/adobe/mobile/Analytics$TimedActionBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/adobe/mobile/Analytics$TimedActionBlock",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility;->trackTimedActionEnd(Ljava/lang/String;Lcom/adobe/mobile/Analytics$TimedActionBlock;)V

    .line 137
    return-void
.end method

.method public static trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile trackTimedActionStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->logDebug(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility;->trackTimedActionStart(Ljava/lang/String;Ljava/util/Map;)V

    .line 103
    return-void
.end method

.method public static trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->debug_LogAllAnalyticsCalls()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ADBMobile trackTimedActionUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->logDebug(Ljava/lang/String;)V

    .line 112
    :cond_0
    invoke-static {}, Lcom/adobe/utility/analytics/TrackingUtility;->getInstance()Lcom/adobe/utility/analytics/TrackingUtility;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/adobe/utility/analytics/TrackingUtility;->trackTimedActionUpdate(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    return-void
.end method

.method public static userLoggedIn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/adobe/premiereclip/metrics/ADBMAnalyticsHelper;->sUserLoggedIn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "logged in"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "not logged in"

    goto :goto_0
.end method
