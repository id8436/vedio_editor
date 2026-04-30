.class public final enum Lcom/dropbox/core/v2/files/RelocationError$Tag;
.super Ljava/lang/Enum;
.source "RelocationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

.field public static final enum TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 35
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "FROM_LOOKUP"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 36
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "FROM_WRITE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "TO"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 41
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "CANT_COPY_SHARED_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "CANT_NEST_SHARED_FOLDER"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "CANT_MOVE_FOLDER_INTO_ITSELF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "TOO_MANY_FILES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 59
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "DUPLICATED_OR_NESTED_PATHS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "CANT_TRANSFER_OWNERSHIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dropbox/core/v2/files/RelocationError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/RelocationError$Tag;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/RelocationError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/RelocationError$Tag;

    return-object v0
.end method
