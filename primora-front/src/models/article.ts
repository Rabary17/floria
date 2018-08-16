export class Article {
  constructor(
    public uuid: string,
    public titre: any,
    public soustitre: any,
    public description: any,
    public date: string,
    public cash: string,
    public currency: string,
    public lieu: string,
    public images: Array<string>,
    public categorie: string,
    public mensualite: string
  ) {}
}
