.class Lcom/igexin/push/core/c/u;
.super Lcom/igexin/push/b/d;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/igexin/push/core/c/f;


# direct methods
.method constructor <init>(Lcom/igexin/push/core/c/f;J)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/push/core/c/u;->b:Lcom/igexin/push/core/c/f;

    iput-wide p2, p0, Lcom/igexin/push/core/c/u;->a:J

    invoke-direct {p0}, Lcom/igexin/push/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/igexin/push/core/c/f;->a()Lcom/igexin/push/core/c/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/push/core/c/u;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x15

    iget-wide v4, p0, Lcom/igexin/push/core/c/u;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/push/core/c/f;->a(Lcom/igexin/push/core/c/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    return-void
.end method