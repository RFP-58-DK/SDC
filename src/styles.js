// Testing whether I can store some common styling options in variables and import them

const colors = {
  standardBGColor: 'rgb(107, 41, 97)',
  standardTxtColor: 'rgb(50, 150, 240)',
  standardBorder: '3px solid rgba(52, 168, 192, 0.8)',
};

const styles = {
  Standard: `
    background: rgba(220, 110, 150, 0.8);
    border: 3px solid rgba(52, 168, 192, 0.8);
    border-radius: 20px;
    box-shadow: -3px 3px rgba(89, 255, 255, 0.6);
    display: flex;
    flex-direction: column;
    height: 490px;
    max-width: 85%;
    margin: 20px;
    padding: 20px;

    &:hover {
      background: rgba(220, 110, 150);
    }

    h2 {
      text-shadow: -1px 1px 1px rgba(60, 230, 230, 0.8);
    },
  `,


};

module.exports = {
  colors,
  styles,
};
