export class Article {
  constructor(
    public uid: string,
    public titre: string,
    public subtitle: string,
    public description: string,
    public date: string,
    public prix_cash: string,
    public currency: string,
    public lieu: string,
    public image: string,
    public categorie: string,
    public mensualite: string
  ) {}
}
