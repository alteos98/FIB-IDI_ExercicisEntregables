#include <QLabel>

class MyLabel: public QLabel {
	Q_OBJECT

	private:
	int hora;
	int minut;
	
	public:
	MyLabel(QWidget *parent);
	
	public slots:
	void offPressed();
	void onPressed();
	void setHora(int);
	void setMinut(int);
	void reset();

	signals:
	void emitzero(int);
};
