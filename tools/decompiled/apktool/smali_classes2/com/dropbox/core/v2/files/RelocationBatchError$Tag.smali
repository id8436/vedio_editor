.class public final enum Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
.super Ljava/lang/Enum;
.source "RelocationBatchError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

.field public static final enum TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "FROM_LOOKUP"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 32
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "FROM_WRITE"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 33
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "TO"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 37
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "CANT_COPY_SHARED_FOLDER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "CANT_NEST_SHARED_FOLDER"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "CANT_MOVE_FOLDER_INTO_ITSELF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 50
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "TOO_MANY_FILES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 55
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "DUPLICATED_OR_NESTED_PATHS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "CANT_TRANSFER_OWNERSHIP"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 75
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    const-string/jumbo v1, "TOO_MANY_WRITE_OPERATIONS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_LOOKUP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->FROM_WRITE:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TO:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_COPY_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_NEST_SHARED_FOLDER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_MOVE_FOLDER_INTO_ITSELF:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_FILES:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->DUPLICATED_OR_NESTED_PATHS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->CANT_TRANSFER_OWNERSHIP:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->TOO_MANY_WRITE_OPERATIONS:Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->$VALUES:[Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/files/RelocationBatchError$Tag;

    return-object v0
.end method
