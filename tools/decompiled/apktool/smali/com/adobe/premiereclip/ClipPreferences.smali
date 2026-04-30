.class public Lcom/adobe/premiereclip/ClipPreferences;
.super Ljava/lang/Object;
.source "ClipPreferences.java"


# static fields
.field public static final AUTO_FIRST_TIME:Ljava/lang/String; = "AUTO_FIRST_TIME"

.field public static final AUTO_SEQUENCE:Ljava/lang/String; = "AUTO_SEQUENCE"

.field public static final AUTO_SHARE:Ljava/lang/String; = "AUTO_SHARE"

.field public static final COACHMARK_FIRST_TIME:Ljava/lang/String; = "COACHMARK_FIRST_TIME"

.field public static final COACHMARK_SECOND_TIME:Ljava/lang/String; = "COACHMARK_SECOND_TIME"

.field public static final COMMUNITY_FEED_GROUP:Ljava/lang/String; = "COMMUNITY_FEED_GROUP"

.field public static final COMMUNITY_FEED_LAST_QUERY_TIMESTAMP:Ljava/lang/String; = "COMMUNITY_FEED_LAST_QUERY_TIMESTAMP"

.field public static final COMMUNITY_FEED_TITLE:Ljava/lang/String; = "COMMUNITY_FEED_TITLE"

.field public static final COMMUNITY_FEED_URL:Ljava/lang/String; = "COMMUNITY_FEED_URL"

.field public static final DEFAULT_EXPORT_RES_SET_KEY:Ljava/lang/String; = "DEFAULT_EXPORT_RES_SET"

.field public static final DEVICE_MEDIA_SOURCE:Ljava/lang/String; = "GALLERY_MEDIA_SOURCE"

.field public static final DROPBOX_ACCESS_KEY:Ljava/lang/String; = "ACCESS_KEY"

.field public static final DROPBOX_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final EXPORT_RES_KEY:Ljava/lang/String; = "EXPORT_RES"

.field public static final FREEFORM_ADJUST:Ljava/lang/String; = "FREEFORM_ADJUST"

.field public static final FREEFORM_EDIT_PROJECT:Ljava/lang/String; = "FREEFORM_EDIT_PROJECT"

.field public static final FREEFORM_EMPTY:Ljava/lang/String; = "FREEFORM_EMPTY"

.field public static final FREEFORM_REORDER:Ljava/lang/String; = "FREEFORM_REORDER"

.field public static final FREEFORM_SHARE:Ljava/lang/String; = "FREEFORM_SHARE"

.field public static final FREEFORM_TRIM2:Ljava/lang/String; = "FREEFORM_TRIM2"

.field public static final FREEFORM_TWOFINGER:Ljava/lang/String; = "FREEFORM_TWOFINGER"

.field public static final GOOGLE_ACCOUNT_NAME:Ljava/lang/String; = "googleAccount"

.field public static final NOTIFICATION_GROUP:Ljava/lang/String; = "NOTIFICATION_GROUP"

.field public static final NOTIFICATION_LAST_QUERY_TIMESTAMP:Ljava/lang/String; = "NOTIFICATION_LAST_QUERY_TIMESTAMP"

.field public static final NOTIFICATION_PREVIEW:Ljava/lang/String; = "NOTIFICATION_PREVIEW"

.field public static final NOTIFICATION_SCHEDULE_TIME_MILLIS:Ljava/lang/String; = "NOTIFICATION_SCHEDULE_TIME_MILLIS"

.field public static final NOTIFICATION_TIME_MILLIS:Ljava/lang/String; = "NOTIFICATION_TIME_MILLIS"

.field public static final ORGANIZER_BROWSE:Ljava/lang/String; = "ORGANIZER_BROWSE"

.field public static final ORGANIZER_PLUS_BUTTON:Ljava/lang/String; = "ORGANIZER_PLUS_BUTTON"

.field public static final SYNC_DIALOG_USERS_LIST:Ljava/lang/String; = "usersSyncDialog"

.field private static instance:Lcom/adobe/premiereclip/ClipPreferences;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const v0, 0x7f0a0459

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 84
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    .line 85
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/adobe/premiereclip/ClipPreferences;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/adobe/premiereclip/ClipPreferences;->instance:Lcom/adobe/premiereclip/ClipPreferences;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/adobe/premiereclip/ClipPreferences;

    invoke-direct {v0, p0}, Lcom/adobe/premiereclip/ClipPreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/premiereclip/ClipPreferences;->instance:Lcom/adobe/premiereclip/ClipPreferences;

    .line 91
    :cond_0
    sget-object v0, Lcom/adobe/premiereclip/ClipPreferences;->instance:Lcom/adobe/premiereclip/ClipPreferences;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDeviceSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    const-string/jumbo v0, "GALLERY_MEDIA_SOURCE"

    const-string/jumbo v1, "device"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportResolution()I
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "EXPORT_RES"

    const/16 v2, 0x2d0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getListOfUsers(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationScheduleTime()J
    .locals 4

    .prologue
    .line 125
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "NOTIFICATION_SCHEDULE_TIME_MILLIS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNotificationTime()J
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "NOTIFICATION_TIME_MILLIS"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreference(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDefaultExportResolutionSet()Z
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "DEFAULT_EXPORT_RES_SET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public removePreference(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    return-void
.end method

.method public resetCoachmarks()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 149
    const-string/jumbo v0, "ORGANIZER_PLUS_BUTTON"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 150
    const-string/jumbo v0, "ORGANIZER_BROWSE"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 151
    const-string/jumbo v0, "FREEFORM_TRIM2"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 152
    const-string/jumbo v0, "FREEFORM_REORDER"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 153
    const-string/jumbo v0, "FREEFORM_ADJUST"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 154
    const-string/jumbo v0, "FREEFORM_EDIT_PROJECT"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 155
    const-string/jumbo v0, "FREEFORM_SHARE"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 156
    const-string/jumbo v0, "FREEFORM_EMPTY"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 157
    const-string/jumbo v0, "AUTO_FIRST_TIME"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v0, "AUTO_SEQUENCE"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 159
    const-string/jumbo v0, "AUTO_SHARE"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 160
    const-string/jumbo v0, "FREEFORM_TWOFINGER"

    invoke-virtual {p0, v0, v1}, Lcom/adobe/premiereclip/ClipPreferences;->setPreference(Ljava/lang/String;Z)V

    .line 161
    return-void
.end method

.method public setBoolean(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    return-void
.end method

.method public setDefaultExportResolution(Z)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "DEFAULT_EXPORT_RES_SET"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public setDeviceSource(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const-string/jumbo v0, "GALLERY_MEDIA_SOURCE"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/premiereclip/ClipPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setExportResolution(I)V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "EXPORT_RES"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method

.method public setListOfUsers(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method public setLong(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method

.method public setNotificationScheduleTime(J)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "NOTIFICATION_SCHEDULE_TIME_MILLIS"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 121
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void
.end method

.method public setNotificationTime(J)V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "NOTIFICATION_TIME_MILLIS"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public setPreference(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/adobe/premiereclip/ClipPreferences;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void
.end method
