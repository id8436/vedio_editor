.class public final enum Lcom/dropbox/core/v2/sharing/MemberAction;
.super Ljava/lang/Enum;
.source "MemberAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dropbox/core/v2/sharing/MemberAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

.field public static final enum REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "LEAVE_A_COPY"

    invoke-direct {v0, v1, v3}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 30
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "MAKE_EDITOR"

    invoke-direct {v0, v1, v4}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 34
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "MAKE_OWNER"

    invoke-direct {v0, v1, v5}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 38
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "MAKE_VIEWER"

    invoke-direct {v0, v1, v6}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 42
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "MAKE_VIEWER_NO_COMMENT"

    invoke-direct {v0, v1, v7}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 46
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "REMOVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 54
    new-instance v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/sharing/MemberAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/dropbox/core/v2/sharing/MemberAction;

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->LEAVE_A_COPY:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_EDITOR:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_OWNER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/dropbox/core/v2/sharing/MemberAction;->MAKE_VIEWER_NO_COMMENT:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->REMOVE:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/dropbox/core/v2/sharing/MemberAction;->OTHER:Lcom/dropbox/core/v2/sharing/MemberAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/MemberAction;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    return-object v0
.end method

.method public static values()[Lcom/dropbox/core/v2/sharing/MemberAction;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberAction;->$VALUES:[Lcom/dropbox/core/v2/sharing/MemberAction;

    invoke-virtual {v0}, [Lcom/dropbox/core/v2/sharing/MemberAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dropbox/core/v2/sharing/MemberAction;

    return-object v0
.end method
