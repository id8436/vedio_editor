.class public final enum Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;
.super Ljava/lang/Enum;
.source "ACLibraryManagerLibOpEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kCurrentLibrarySwitched:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kCurrentLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kElementAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kElementRemoved:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kElementUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kLibraryAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kLibraryDeleted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kLibraryRenamed:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kLibraryUnShared:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kSyncFinished:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kSyncStarted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

.field public static final enum kSyncUnavailableDueToNoInternat:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;


# instance fields
.field private _val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kElementAdded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 17
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kElementRemoved"

    invoke-direct {v0, v1, v4, v5}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementRemoved:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 18
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kElementUpdated"

    invoke-direct {v0, v1, v5, v6}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 19
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kLibraryAdded"

    invoke-direct {v0, v1, v6, v7}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 20
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kLibraryDeleted"

    invoke-direct {v0, v1, v7, v8}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryDeleted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 21
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kLibraryUnShared"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUnShared:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 22
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kLibraryUpdated"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kLibraryRenamed"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryRenamed:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kCurrentLibrarySwitched"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kCurrentLibrarySwitched:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kCurrentLibraryUpdated"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kCurrentLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 26
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kSyncStarted"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncStarted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 27
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kSyncFinished"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncFinished:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 28
    new-instance v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const-string/jumbo v1, "kSyncUnavailableDueToNoInternat"

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncUnavailableDueToNoInternat:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    .line 14
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementRemoved:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kElementUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryAdded:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryDeleted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUnShared:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kLibraryRenamed:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kCurrentLibrarySwitched:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kCurrentLibraryUpdated:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncStarted:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncFinished:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->kSyncUnavailableDueToNoInternat:Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->_val:I

    .line 33
    iput p3, p0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->_val:I

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->$VALUES:[Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/adobeinternal/storage/aclibmanager/events/ACLibraryManagerLibOpEvent$Type;

    return-object v0
.end method
